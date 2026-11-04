import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/staff_models.dart';
import '../services/api_service.dart';
import '../core/app_theme.dart';
import 'login_screen.dart';

class AttendanceStaffTab extends StatefulWidget {
  const AttendanceStaffTab({super.key});

  @override
  State<AttendanceStaffTab> createState() => _AttendanceStaffTabState();
}

class _AttendanceStaffTabState extends State<AttendanceStaffTab> {
  final ApiService _apiService = ApiService();
  final TextEditingController _searchController = TextEditingController();

  DateTime _selectedDate = DateTime.now();
  List<AttendanceModel> _allAttendance = [];
  List<AttendanceModel> _filteredAttendance = [];
  bool _isLoading = true;
  String? _errorMessage;

  @override
  void initState() {
    super.initState();
    _fetchAttendance();
    _searchController.addListener(_onSearchChanged);
  }

  @override
  void dispose() {
    _searchController.removeListener(_onSearchChanged);
    _searchController.dispose();
    super.dispose();
  }

  String get _formattedDate => DateFormat('yyyy-MM-dd').format(_selectedDate);

  void _onSearchChanged() {
    final query = _searchController.text.trim().toLowerCase();
    setState(() {
      if (query.isEmpty) {
        _filteredAttendance = List.from(_allAttendance);
      } else {
        _filteredAttendance = _allAttendance.where((att) {
          final idMatch = att.employeeId.toLowerCase().contains(query);
          final nameMatch = att.fullName.toLowerCase().contains(query);
          final deptMatch = (att.departmentName ?? '').toLowerCase().contains(query);
          return idMatch || nameMatch || deptMatch;
        }).toList();
      }
    });
  }

  Future<void> _fetchAttendance() async {
    setState(() {
      _isLoading = true;
      _errorMessage = null;
    });

    try {
      final list = await _apiService.fetchPresentStaff(date: _formattedDate);
      if (mounted) {
        setState(() {
          _allAttendance = list;
          _filteredAttendance = list;
          _isLoading = false;
        });
      }
    } on ApiException catch (e) {
      if (mounted) {
        if (e.statusCode == 401) {
          Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (_) => const LoginScreen()),
            (route) => false,
          );
          return;
        }
        setState(() {
          _errorMessage = e.message;
          _isLoading = false;
        });
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _errorMessage = e.toString();
          _isLoading = false;
        });
      }
    }
  }

  Future<void> _pickDate() async {
    final picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(2020),
      lastDate: DateTime.now().add(const Duration(days: 365)),
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: const ColorScheme.light(
              primary: AppTheme.primary,
              onPrimary: Colors.white,
              onSurface: AppTheme.textPrimary,
            ),
          ),
          child: child!,
        );
      },
    );

    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
      _fetchAttendance();
    }
  }

  @override
  Widget build(BuildContext context) {
    // Stats calculation
    final presentCount = _allAttendance.where((a) => (a.attendanceStatus ?? '').toUpperCase() == 'P').length;
    final lateCount = _allAttendance.where((a) => (a.attendanceStatus ?? '').toUpperCase() == 'L').length;

    return Column(
      children: [
        // Top Filter & Search
        Container(
          padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
          decoration: const BoxDecoration(
            color: Colors.white,
            border: Border(bottom: BorderSide(color: AppTheme.border)),
          ),
          child: Column(
            children: [
              // Date picker button row
              Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: _pickDate,
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                        decoration: BoxDecoration(
                          color: const Color(0xFFF1F5F9),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: AppTheme.border),
                        ),
                        child: Row(
                          children: [
                            const Icon(Icons.calendar_today_rounded, size: 16, color: AppTheme.accent),
                            const SizedBox(width: 8),
                            Text(
                              _formattedDate,
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: AppTheme.textPrimary,
                              ),
                            ),
                            const Spacer(),
                            const Icon(Icons.arrow_drop_down, color: AppTheme.textSecondary),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  // Reset to today
                  IconButton.filledTonal(
                    onPressed: () {
                      if (_selectedDate.year != DateTime.now().year ||
                          _selectedDate.month != DateTime.now().month ||
                          _selectedDate.day != DateTime.now().day) {
                        setState(() {
                          _selectedDate = DateTime.now();
                        });
                        _fetchAttendance();
                      }
                    },
                    tooltip: 'Set to Today',
                    icon: const Icon(Icons.today_rounded, size: 20),
                  ),
                ],
              ),
              const SizedBox(height: 10),

              // Search field
              TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  hintText: 'Search by employee ID, name, department...',
                  prefixIcon: const Icon(Icons.search_rounded, size: 20),
                  suffixIcon: _searchController.text.isNotEmpty
                      ? IconButton(
                          icon: const Icon(Icons.clear_rounded, size: 18),
                          onPressed: () => _searchController.clear(),
                        )
                      : null,
                  contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
                ),
              ),
              const SizedBox(height: 10),

              // Summary Pills
              Row(
                children: [
                  _buildStatBadge(
                    label: 'Total',
                    value: '${_allAttendance.length}',
                    color: AppTheme.primary,
                  ),
                  const SizedBox(width: 8),
                  _buildStatBadge(
                    label: 'Present',
                    value: '$presentCount',
                    color: AppTheme.emerald,
                  ),
                  const SizedBox(width: 8),
                  _buildStatBadge(
                    label: 'Late',
                    value: '$lateCount',
                    color: AppTheme.amber,
                  ),
                  const Spacer(),
                  if (_searchController.text.isNotEmpty)
                    Text(
                      'Filtered: ${_filteredAttendance.length}',
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: AppTheme.accent,
                      ),
                    ),
                ],
              ),
            ],
          ),
        ),

        // List body
        Expanded(
          child: RefreshIndicator(
            onRefresh: _fetchAttendance,
            child: _buildBody(),
          ),
        ),
      ],
    );
  }

  Widget _buildStatBadge({
    required String label,
    required String value,
    required Color color,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            '$label: ',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: color,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w700,
              color: color,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBody() {
    if (_isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (_errorMessage != null) {
      return ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.warning_amber_rounded, size: 54, color: AppTheme.rose),
                const SizedBox(height: 12),
                Text(
                  _errorMessage!,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: AppTheme.textPrimary, fontSize: 14),
                ),
                const SizedBox(height: 16),
                ElevatedButton.icon(
                  onPressed: _fetchAttendance,
                  icon: const Icon(Icons.refresh_rounded, size: 18),
                  label: const Text('Try Again'),
                ),
              ],
            ),
          ),
        ],
      );
    }

    if (_filteredAttendance.isEmpty) {
      return ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(48.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  _searchController.text.isNotEmpty ? Icons.search_off_rounded : Icons.event_busy_rounded,
                  size: 52,
                  color: AppTheme.textSecondary,
                ),
                const SizedBox(height: 12),
                Text(
                  _searchController.text.isNotEmpty
                      ? 'No attendance found matching search query.'
                      : 'No attendance records found for $_formattedDate.',
                  style: const TextStyle(color: AppTheme.textSecondary, fontSize: 14),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      );
    }

    return ListView.separated(
      padding: const EdgeInsets.all(16),
      itemCount: _filteredAttendance.length,
      separatorBuilder: (_, _) => const SizedBox(height: 12),
      itemBuilder: (context, index) {
        final item = _filteredAttendance[index];
        final isLate = (item.attendanceStatus ?? '').toUpperCase() == 'L';

        return Card(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header: Name + Status Badge
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item.fullName,
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              color: AppTheme.textPrimary,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                                decoration: BoxDecoration(
                                  color: const Color(0xFFF1F5F9),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: Text(
                                  'ID: ${item.employeeId}',
                                  style: const TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w600,
                                    color: AppTheme.textSecondary,
                                  ),
                                ),
                              ),
                              if (item.departmentName != null && item.departmentName!.trim().isNotEmpty) ...[
                                const SizedBox(width: 6),
                                Expanded(
                                  child: Text(
                                    item.departmentName!,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      fontSize: 12,
                                      color: AppTheme.textSecondary,
                                    ),
                                  ),
                                ),
                              ],
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 8),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                      decoration: BoxDecoration(
                        color: (isLate ? AppTheme.amber : AppTheme.emerald).withValues(alpha: 0.12),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: (isLate ? AppTheme.amber : AppTheme.emerald).withValues(alpha: 0.3),
                        ),
                      ),
                      child: Text(
                        isLate ? 'Late' : 'Present',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: isLate ? AppTheme.amber : AppTheme.emerald,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 14),
                const Divider(height: 1, color: AppTheme.border),
                const SizedBox(height: 12),

                // In & Out Timestamps
                Row(
                  children: [
                    // IN Time
                    Expanded(
                      child: _buildTimeBox(
                        title: 'IN TIME',
                        time: item.inTime ?? '--:--:--',
                        source: item.inReceivedFrom,
                        color: AppTheme.emerald,
                        icon: Icons.login_rounded,
                      ),
                    ),
                    const SizedBox(width: 12),
                    // OUT Time
                    Expanded(
                      child: _buildTimeBox(
                        title: 'OUT TIME',
                        time: item.outTime ?? '--:--:--',
                        source: item.outReceivedFrom,
                        color: item.outTime != null ? AppTheme.accent : Colors.grey,
                        icon: Icons.logout_rounded,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildTimeBox({
    required String title,
    required String time,
    required String? source,
    required Color color,
    required IconData icon,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      decoration: BoxDecoration(
        color: const Color(0xFFF8FAFC),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: const Color(0xFFE2E8F0)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, size: 14, color: color),
              const SizedBox(width: 4),
              Text(
                title,
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w700,
                  color: color,
                  letterSpacing: 0.5,
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Text(
            time,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: AppTheme.textPrimary,
            ),
          ),
          if (source != null && source.isNotEmpty) ...[
            const SizedBox(height: 2),
            Text(
              source,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 10,
                color: AppTheme.textSecondary,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ],
      ),
    );
  }
}
