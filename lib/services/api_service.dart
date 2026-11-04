import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import '../core/api_config.dart';
import '../models/staff_models.dart';

class ApiException implements Exception {
  final String message;
  final int? statusCode;

  ApiException(this.message, {this.statusCode});

  @override
  String toString() => message;
}

class ApiService {
  static const String _keyToken = 'auth_token';

  Future<void> saveToken(String token) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_keyToken, token);
  }

  Future<String?> getToken() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_keyToken);
  }

  Future<void> clearToken() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_keyToken);
  }

  Future<String> signIn({
    required String email,
    required String password,
  }) async {
    final url = Uri.parse('${ApiConfig.baseUrl}${ApiConfig.signInEndpoint}');
    final response = await http.post(
      url,
      headers: {
        'Accept': 'application/json',
      },
      body: {
        'email': email,
        'password': password,
      },
    );

    final dynamic body;
    try {
      body = jsonDecode(response.body);
    } catch (_) {
      throw ApiException(
        'Server returned invalid response: ${response.statusCode}',
        statusCode: response.statusCode,
      );
    }

    if (response.statusCode >= 200 && response.statusCode < 300) {
      if (body is Map && body['data'] != null && body['data']['token'] != null) {
        final token = body['data']['token'].toString();
        await saveToken(token);
        return token;
      }
      throw ApiException('Token not found in login response.');
    }

    // Handle 401 & 422 errors and validation formats
    String errorMessage = 'Login failed';
    if (body is Map) {
      if (body['message'] != null && body['message'].toString().isNotEmpty) {
        errorMessage = body['message'].toString();
      }
      if (body['errors'] is Map) {
        final errors = body['errors'] as Map;
        final List<String> errorList = [];
        for (final val in errors.values) {
          if (val is List && val.isNotEmpty) {
            errorList.add(val.first.toString());
          } else if (val != null) {
            errorList.add(val.toString());
          }
        }
        if (errorList.isNotEmpty) {
          errorMessage = errorList.join('\n');
        }
      }
    }
    throw ApiException(errorMessage, statusCode: response.statusCode);
  }

  Future<List<StaffModel>> fetchEnrolledStaff() async {
    final token = await getToken();
    if (token == null) {
      throw ApiException('Unauthenticated. Please login again.', statusCode: 401);
    }

    final url = Uri.parse('${ApiConfig.baseUrl}${ApiConfig.enrollStaffEndpoint}');
    final response = await http.get(
      url,
      headers: {
        'Accept': 'application/json',
        'Authorization': 'Bearer $token',
      },
    );

    final dynamic body;
    try {
      body = jsonDecode(response.body);
    } catch (_) {
      throw ApiException('Invalid response from server.', statusCode: response.statusCode);
    }

    if (response.statusCode == 401) {
      await clearToken();
      throw ApiException(
        body is Map && body['message'] != null ? body['message'].toString() : 'Session expired. Please login again.',
        statusCode: 401,
      );
    }

    if (response.statusCode >= 200 && response.statusCode < 300) {
      if (body is Map && body['EnrollStaffList'] is List) {
        final list = body['EnrollStaffList'] as List;
        return list.map((item) => StaffModel.fromJson(item as Map<String, dynamic>)).toList();
      }
      return [];
    }

    final errorMsg = body is Map && body['message'] != null ? body['message'].toString() : 'Failed to fetch enrolled staff.';
    throw ApiException(errorMsg, statusCode: response.statusCode);
  }

  Future<List<AttendanceModel>> fetchPresentStaff({String? date}) async {
    final token = await getToken();
    if (token == null) {
      throw ApiException('Unauthenticated. Please login again.', statusCode: 401);
    }

    // present-staff endpoint with optional query or body
    Uri url = Uri.parse('${ApiConfig.baseUrl}${ApiConfig.presentStaffEndpoint}');
    if (date != null && date.isNotEmpty) {
      url = url.replace(queryParameters: {'change_date': date});
    }

    final response = await http.get(
      url,
      headers: {
        'Accept': 'application/json',
        'Authorization': 'Bearer $token',
      },
    );

    final dynamic body;
    try {
      body = jsonDecode(response.body);
    } catch (_) {
      throw ApiException('Invalid response from server.', statusCode: response.statusCode);
    }

    if (response.statusCode == 401) {
      await clearToken();
      throw ApiException(
        body is Map && body['message'] != null ? body['message'].toString() : 'Session expired. Please login again.',
        statusCode: 401,
      );
    }

    if (response.statusCode >= 200 && response.statusCode < 300) {
      if (body is Map && body['presentStaffList'] is List) {
        final list = body['presentStaffList'] as List;
        return list.map((item) => AttendanceModel.fromJson(item as Map<String, dynamic>)).toList();
      }
      return [];
    }

    final errorMsg = body is Map && body['message'] != null ? body['message'].toString() : 'Failed to fetch attendance list.';
    throw ApiException(errorMsg, statusCode: response.statusCode);
  }
}
