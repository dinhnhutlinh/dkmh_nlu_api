import 'dart:async';

import 'package:dio/dio.dart';
import 'package:dkmh_nlu_api/src/models/models/student_info.dart';
import 'package:dkmh_nlu_api/src/models/models/test_score.dart';
import 'package:dkmh_nlu_api/src/models/models/time_table_in_week.dart';
import 'package:dkmh_nlu_api/src/utils/api_service.dart';
import 'package:dkmh_nlu_api/src/utils/network.dart';

import 'exceptions/exception.dart';

class DkmhNLU {
  final String _username;
  final String _password;
  late final ApiService _apiService;
  DateTime? _expireTime;

  DkmhNLU({required String username, required String password})
      : _password = password,
        _username = username {
    _init();
  }

  void _init() {
    final network = Network().instance;
    final dio = network.dio;
    _apiService = ApiService(dio, baseUrl: NetworkConfig.baseUrl);
  }

  Future<String> login() async {
    try {
      final user = await _apiService.login(
        username: _username,
        password: _password,
      );
      _expireTime = DateTime.now().add(Duration(seconds: user.expiresIn ?? 0));
      Network().instance.setToken(user.accessToken ?? '');
      return user.accessToken!;
    } on DioError catch (e) {
      if (e.response?.statusCode == 400) {
        throw LoginException(e.response?.data["message"] ?? "Login error");
      } else {
        throw UnknownException('Unknown error');
      }
    }
  }

  ///
  /// Check if user is login
  ///
  bool isLogin() {
    return _expireTime != null;
  }

  ///
  /// Check if user is expired
  ///
  bool isExpired() {
    if (_expireTime == null) {
      return true;
    }
    return _expireTime!.isBefore(DateTime.now());
  }

  Future<StudentInfo> getStudentInfo() async {
    if (_expireTime == null) {
      throw NotLoginError('Hãy đăng nhập trước');
    }
    if (_expireTime!.isBefore(DateTime.now())) {
      await login();
    }
    try {
      final studentInfo = await _apiService.getStudentInfo();
      if (studentInfo.data != null) {
        return studentInfo.data!;
      } else {
        throw ServerError(studentInfo.message ?? 'Server error');
      }
    } on DioError catch (e) {
      throw UnknownException(e.message ?? 'Unknown error');
    }
  }

  Future<TestScore> getStudentScore() async {
    if (_expireTime == null) {
      throw NotLoginError('Hãy đăng nhập trước');
    }
    if (_expireTime!.isBefore(DateTime.now())) {
      await login();
    }
    try {
      final studentScore = await _apiService.getStudentScore();
      if (studentScore.data != null) {
        return studentScore.data!;
      } else {
        throw ServerError(studentScore.message ?? 'Server error');
      }
    } on DioError catch (e) {
      throw UnknownException(e.message ?? 'Unknown error');
    }
  }

  Future<TimeTableInWeek> getStudentSchedule(
      {required String semesterId, required String weekId}) async {
    if (_expireTime == null) {
      throw NotLoginError('Hãy đăng nhập trước');
    }
    if (_expireTime!.isBefore(DateTime.now())) {
      await login();
    }
    try {
      final studentSchedule = await _apiService.getStudentSchedule(
        data: {
          'hocky': semesterId,
          'tuan': weekId,
        },
      );
      if (studentSchedule.data != null) {
        return studentSchedule.data!;
      } else {
        throw ServerError(studentSchedule.message ?? 'Server error');
      }
    } on DioError catch (e) {
      throw UnknownException(e.message ?? 'Unknown error');
    }
  }
}
