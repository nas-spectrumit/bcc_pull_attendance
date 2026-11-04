class StaffModel {
  final String employeeId;
  final String fullName;
  final String? departmentName;
  final String? createdAt;

  StaffModel({
    required this.employeeId,
    required this.fullName,
    this.departmentName,
    this.createdAt,
  });

  factory StaffModel.fromJson(Map<String, dynamic> json) {
    return StaffModel(
      employeeId: (json['employeed_id'] ?? '').toString(),
      fullName: (json['full_name'] ?? '').toString().trim(),
      departmentName: json['department_name'] as String?,
      createdAt: json['created_at'] as String?,
    );
  }
}

class AttendanceModel {
  final String employeeId;
  final String fullName;
  final String? departmentName;
  final String? attendanceDate;
  final String? attendanceStatus; // 'P', 'L', etc.
  final String? inTime;
  final String? outTime;
  final String? inReceivedFrom;
  final String? outReceivedFrom;

  AttendanceModel({
    required this.employeeId,
    required this.fullName,
    this.departmentName,
    this.attendanceDate,
    this.attendanceStatus,
    this.inTime,
    this.outTime,
    this.inReceivedFrom,
    this.outReceivedFrom,
  });

  factory AttendanceModel.fromJson(Map<String, dynamic> json) {
    return AttendanceModel(
      employeeId: (json['employeed_id'] ?? '').toString(),
      fullName: (json['full_name'] ?? '').toString().trim(),
      departmentName: json['department_name'] as String?,
      attendanceDate: json['attendance_date'] as String?,
      attendanceStatus: json['attendance_status'] as String?,
      inTime: json['in_time'] as String?,
      outTime: json['out_time'] as String?,
      inReceivedFrom: json['in_received_from'] as String?,
      outReceivedFrom: json['out_received_from'] as String?,
    );
  }
}

