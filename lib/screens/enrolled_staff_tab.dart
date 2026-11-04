import 'package:flutter/material.dart';
import '../models/staff_models.dart';
import '../services/api_service.dart';
import '../core/app_theme.dart';
import 'login_screen.dart';

class EnrolledStaffTab extends StatefulWidget {
  const EnrolledStaffTab({super.key});

  @override
  State<EnrolledStaffTab> createState() => _EnrolledStaffTabState();
}

class _EnrolledStaffTabState extends State<EnrolledStaffTab> {
  final ApiService _apiService = ApiService();
  final TextEditingController _searchController = TextEditingController();

  List<StaffModel> _allStaff = [];
  List<StaffModel> _filteredStaff = [];
  bool _isLoading = true;
  String? _errorMessage;

  @override
  void initState() {
    super.initState();
    _fetchStaff();
    _searchController.addListener(_onSearchChanged);
  }

  @override
  void dispose() {
    _searchController.removeListener(_onSearchChanged);
    _searchController.dispose();
    super.dispose();
  }

  void _onSearchChanged() {
    final query = _searchController.text.trim().toLowerCase();
    setState(() {
      if (query.isEmpty) {
        _filteredStaff = List.from(_allStaff);
      } else {
        _filteredStaff = _allStaff.where((staff) {
          final idMatch = staff.employeeId.toLowerCase().contains(query);
          final nameMatch = staff.fullName.toLowerCase().contains(query);
          final deptMatch = (staff.departmentName ?? '').toLowerCase().contains(query);
          return idMatch || nameMatch || deptMatch;
        }).toList();
      }
    });
  }

  Future<void> _fetchStaff() async {
    setState(() {
      _isLoading = true;
      _errorMessage = null;
    });

    try {
      final list = await _apiService.fetchEnrolledStaff();
      if (mounted) {
        setState(() {
          _allStaff = list;
          _filteredStaff = list;
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

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Top search & stats bar
        Container(
          padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
          decoration: const BoxDecoration(
            color: Colors.white,
            border: Border(bottom: BorderSide(color: AppTheme.border)),
          ),
          child: Column(
            children: [
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total Enrolled: ${_allStaff.length}',
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: AppTheme.textPrimary,
                    ),
                  ),
                  if (_searchController.text.isNotEmpty)
                    Text(
                      'Matches: ${_filteredStaff.length}',
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: AppTheme.accent,
                      ),
                    ),
                ],
              ),
            ],
          ),
        ),

        // List / States
        Expanded(
          child: RefreshIndicator(
            onRefresh: _fetchStaff,
            child: _buildBody(),
          ),
        ),
      ],
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
                  onPressed: _fetchStaff,
                  icon: const Icon(Icons.refresh_rounded, size: 18),
                  label: const Text('Try Again'),
                ),
              ],
            ),
          ),
        ],
      );
    }

    if (_filteredStaff.isEmpty) {
      return ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(48.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  _searchController.text.isNotEmpty ? Icons.search_off_rounded : Icons.people_outline_rounded,
                  size: 52,
                  color: AppTheme.textSecondary,
                ),
                const SizedBox(height: 12),
                Text(
                  _searchController.text.isNotEmpty ? 'No staff found matching query' : 'No enrolled staff records found.',
                  style: const TextStyle(color: AppTheme.textSecondary, fontSize: 14),
                ),
              ],
            ),
          ),
        ],
      );
    }

    return ListView.separated(
      padding: const EdgeInsets.all(16),
      itemCount: _filteredStaff.length,
      separatorBuilder: (_, _) => const SizedBox(height: 12),
      itemBuilder: (context, index) {
        final staff = _filteredStaff[index];
        return Card(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Avatar Badge
                CircleAvatar(
                  radius: 22,
                  backgroundColor: AppTheme.primary.withValues(alpha: 0.08),
                  child: Text(
                    staff.fullName.isNotEmpty ? staff.fullName.characters.first : '#',
                    style: const TextStyle(
                      fontWeight: FontWeight.w700,
                      color: AppTheme.primary,
                      fontSize: 16,
                    ),
                  ),
                ),
                const SizedBox(width: 14),

                // Details
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Text(
                              staff.fullName,
                              style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: AppTheme.textPrimary,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                            decoration: BoxDecoration(
                              color: AppTheme.accent.withValues(alpha: 0.1),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Text(
                              staff.employeeId,
                              style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: AppTheme.accent,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 6),
                      Row(
                        children: [
                          const Icon(Icons.business_outlined, size: 14, color: AppTheme.textSecondary),
                          const SizedBox(width: 5),
                          Expanded(
                            child: Text(
                              staff.departmentName != null && staff.departmentName!.trim().isNotEmpty
                                  ? staff.departmentName!
                                  : 'Department Not Assigned',
                              style: TextStyle(
                                fontSize: 13,
                                color: staff.departmentName != null && staff.departmentName!.trim().isNotEmpty
                                    ? AppTheme.textSecondary
                                    : Colors.grey.shade400,
                                fontStyle: staff.departmentName == null ? FontStyle.italic : FontStyle.normal,
                              ),
                            ),
                          ),
                        ],
                      ),
                      if (staff.createdAt != null && staff.createdAt!.isNotEmpty) ...[
                        const SizedBox(height: 6),
                        Row(
                          children: [
                            const Icon(Icons.schedule_outlined, size: 14, color: AppTheme.textSecondary),
                            const SizedBox(width: 5),
                            Text(
                              'Enrolled: ${staff.createdAt}',
                              style: const TextStyle(
                                fontSize: 12,
                                color: AppTheme.textSecondary,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
