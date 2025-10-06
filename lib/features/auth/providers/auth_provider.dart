// // lib/features/auth/providers/auth_provider.dart
//
// import 'package:flutter/material.dart';
// import '../../../core/api/api_service.dart';
// import '../../../core/models/user_model.dart';
//
// class AuthProvider with ChangeNotifier {
//   final ApiService _apiService = ApiService();
//
//   bool _isLoading = false;
//   bool get isLoading => _isLoading;
//
//   UserModel? _user;
//   UserModel? get user => _user;
//
//   // Handles both registering and sending the OTP
//   Future<void> registerAndSendOtp({
//     required String username,
//     required String email,
//     required String password,
//   }) async {
//     _setLoading(true);
//     try {
//       await _apiService.registerUser(
//         username: username,
//         email: email,
//         password: password,
//       );
//       await _apiService.sendOtp(email: email);
//     } catch (e) {
//       rethrow;
//     } finally {
//       _setLoading(false);
//     }
//   }
//
//   // Verifies the OTP
//   Future<String> verifyOtp({
//     required String email,
//     required String otp,
//   }) async {
//     _setLoading(true);
//     try {
//       final response = await _apiService.verifyOtp(email: email, otp: otp);
//       return response['message'] ?? 'OTP Verified Successfully!';
//     } catch (e) {
//       rethrow;
//     } finally {
//       _setLoading(false);
//     }
//   }
//
//   // Handles the login logic
//   Future<String> login({
//     required String email,
//     required String password,
//   }) async {
//     _setLoading(true);
//     try {
//       final response = await _apiService.loginUser(
//         email: email,
//         password: password,
//       );
//
//       if (response['user'] != null) {
//         _user = UserModel.fromJson(response['user']);
//       }
//
//       notifyListeners(); // Notify UI about the new user data
//       return response['message'] ?? 'Login Successful!';
//     } catch (e) {
//       rethrow;
//     } finally {
//       _setLoading(false);
//     }
//   }
//
//   // This is the single, correct definition of the setLoading method
//   void _setLoading(bool value) {
//     _isLoading = value;
//     notifyListeners();
//   }
//
// }


// // lib/features/auth/providers/auth_provider.dart
//
// import 'package:flutter/material.dart';
// import '../../../core/api/api_service.dart';
// import '../../../core/models/user_model.dart';
// import '../../../core/models/calling_list_model.dart';
//
// class AuthProvider with ChangeNotifier {
//   final ApiService _apiService = ApiService();
//
//   bool _isLoading = false;
//   bool get isLoading => _isLoading;
//
//   UserModel? _user;
//   UserModel? get user => _user;
//
//   CallingListModel? _callingList;
//   CallingListModel? get callingList => _callingList;
//
//   Future<void> registerAndSendOtp({
//     required String username,
//     required String email,
//     required String password,
//   }) async {
//     _setLoading(true);
//     try {
//       await _apiService.registerUser(
//         username: username,
//         email: email,
//         password: password,
//       );
//       await _apiService.sendOtp(email: email);
//     } catch (e) {
//       rethrow;
//     } finally {
//       _setLoading(false);
//     }
//   }
//
//   Future<String> verifyOtp({
//     required String email,
//     required String otp,
//   }) async {
//     _setLoading(true);
//     try {
//       final response = await _apiService.verifyOtp(email: email, otp: otp);
//       return response['message'] ?? 'OTP Verified Successfully!';
//     } catch (e) {
//       rethrow;
//     } finally {
//       _setLoading(false);
//     }
//   }
//
//   Future<String> login({
//     required String email,
//     required String password,
//   }) async {
//     _setLoading(true);
//     try {
//       final response = await _apiService.loginUser(
//         email: email,
//         password: password,
//       );
//       if (response['user'] != null) {
//         _user = UserModel.fromJson(response['user']);
//       }
//       notifyListeners();
//       return response['message'] ?? 'Login Successful!';
//     } catch (e) {
//       rethrow;
//     } finally {
//       _setLoading(false);
//     }
//   }
//
//   Future<void> fetchDashboardData() async {
//     if (_user == null) {
//       throw Exception("User not logged in.");
//     }
//     _setLoading(true);
//     try {
//       final listData = await _apiService.fetchUserList(userId: _user!.id);
//       _callingList = CallingListModel.fromJson(listData);
//     } catch (e) {
//       rethrow;
//     } finally {
//       _setLoading(false);
//     }
//   }
//
//   // The single, correct definition of the setLoading method
//   void _setLoading(bool value) {
//     _isLoading = value;
//     notifyListeners();
//   }
//
//
//
// }


// lib/features/auth/providers/auth_provider.dart

import 'package:flutter/material.dart';
import '../../../core/api/api_service.dart';
import '../../../core/models/user_model.dart';
import '../../../core/models/calling_list_model.dart';
import '../../../core/models/call_stats_model.dart'; // <-- Import for the new stats model

class AuthProvider with ChangeNotifier {
  final ApiService _apiService = ApiService();

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  UserModel? _user;
  UserModel? get user => _user;

  CallingListModel? _callingList;
  CallingListModel? get callingList => _callingList;

  // NEW: State variable to hold the fetched call stats
  CallStatsModel? _callStats;
  CallStatsModel? get callStats => _callStats;

  Future<void> registerAndSendOtp({
    required String username,
    required String email,
    required String password,
  }) async {
    _setLoading(true);
    try {
      await _apiService.registerUser(
        username: username,
        email: email,
        password: password,
      );
      await _apiService.sendOtp(email: email);
    } catch (e) {
      rethrow;
    } finally {
      _setLoading(false);
    }
  }

  Future<String> verifyOtp({
    required String email,
    required String otp,
  }) async {
    _setLoading(true);
    try {
      final response = await _apiService.verifyOtp(email: email, otp: otp);
      return response['message'] ?? 'OTP Verified Successfully!';
    } catch (e) {
      rethrow;
    } finally {
      _setLoading(false);
    }
  }

  Future<String> login({
    required String email,
    required String password,
  }) async {
    _setLoading(true);
    try {
      final response = await _apiService.loginUser(
        email: email,
        password: password,
      );
      if (response['user'] != null) {
        _user = UserModel.fromJson(response['user']);
      }
      notifyListeners();
      return response['message'] ?? 'Login Successful!';
    } catch (e) {
      rethrow;
    } finally {
      _setLoading(false);
    }
  }

  Future<void> fetchDashboardData() async {
    if (_user == null) {
      throw Exception("User not logged in.");
    }
    _setLoading(true);
    try {
      final listData = await _apiService.fetchUserList(userId: _user!.id);
      _callingList = CallingListModel.fromJson(listData);
    } catch (e) {
      rethrow;
    } finally {
      _setLoading(false);
    }
  }

  // NEW: Function to fetch data for the stats dashboard
  Future<void> fetchStatsDashboardData() async {
    // Ensure we have a calling list ID before fetching stats.
    // If it's null, we fetch it first.
    if (_callingList == null) {
      await fetchDashboardData();
      if (_callingList == null) throw Exception("Could not retrieve calling list.");
    }

    _setLoading(true);
    try {
      final statsData = await _apiService.fetchCallStats(listId: _callingList!.id);
      _callStats = CallStatsModel.fromJson(statsData);
    } catch (e) {
      rethrow;
    } finally {
      _setLoading(false);
    }
  }

  // The single, correct definition of the setLoading method
  void _setLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }
}