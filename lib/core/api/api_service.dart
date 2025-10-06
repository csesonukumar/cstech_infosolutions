// // lib/core/api/api_service.dart
//
// import 'dart:convert';
// import 'package:http/http.dart' as http;
//
// class ApiService {
//   static const String _baseUrl = 'https://mock-api.calleyacd.com/api/auth';
//
//   Future<Map<String, dynamic>> registerUser({
//     required String username,
//     required String email,
//     required String password,
//   }) async {
//     final Uri registerUri = Uri.parse('$_baseUrl/register');
//
//     final response = await http.post(
//       registerUri,
//       headers: {
//         'Content-Type': 'application/json', // Let the server know we're sending JSON
//       },
//       body: jsonEncode({
//         'username': username,
//         'email': email,
//         'password': password,
//       }),
//     );
//
//     if (response.statusCode == 200 || response.statusCode == 201) {
//       // If the server returns a success response, then parse the JSON.
//       return jsonDecode(response.body);
//     } else {
//       // If the server did not return a 200 OK response,
//       // then throw an exception.
//       throw Exception('Failed to register user. Status code: ${response.statusCode}');
//     }
//   }
// }



// lib/core/api/api_service.dart

import 'dart:convert';
// import 'package.com/http/http.dart' as http;
import 'package:http/http.dart' as http;

class ApiService {
  static const String _baseUrl = 'https://mock-api.calleyacd.com/api/auth';
  static const String loadUserDataList = 'https://mock-api.calleyacd.com/api/list?userId=68626f9497757cb741f449b0';

  Future<void> registerUser({
    required String username,
    required String email,
    required String password,
  }) async {
    final response = await http.post(
      Uri.parse('$_baseUrl/register'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({'username': username, 'email': email, 'password': password}),
    );
    if (response.statusCode != 200 && response.statusCode != 201) {
      throw Exception('Failed to register user.');
    }
  }

  Future<void> sendOtp({required String email}) async {
    final response = await http.post(
      Uri.parse('$_baseUrl/send-otp'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({'email': email}),
    );
    if (response.statusCode != 200 && response.statusCode != 201) {
      throw Exception('Failed to send OTP.');
    }
  }

  Future<Map<String, dynamic>> verifyOtp({
    required String email,
    required String otp,
  }) async {
    final response = await http.post(
      Uri.parse('$_baseUrl/verify-otp'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({'email': email, 'otp': otp}),
    );
    if (response.statusCode == 200 || response.statusCode == 201) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to verify OTP.');
    }
  }


  // NEW: Function to log the user in
  Future<Map<String, dynamic>> loginUser({
    required String email,
    required String password,
  }) async {
    final response = await http.post(
      Uri.parse('$_baseUrl/login'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({'email': email, 'password': password}),
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      return jsonDecode(response.body);
    } else {
      // You can add more specific error handling here based on API docs
      throw Exception('Failed to login. Please check your credentials.');
    }
  }

  // NEW: Function to get the user's calling list
  Future<Map<String, dynamic>> fetchUserList({required String userId}) async {
    // The userId is passed as a query parameter in the URL
    final Uri uri = Uri.parse('$loadUserDataList/list?userId=$userId');

    final response = await http.get(uri);

    if (response.statusCode == 200) {
      // The API returns a list, so we decode it and take the first item.
      final List<dynamic> responseList = jsonDecode(response.body);
      if (responseList.isNotEmpty) {
        return responseList.first;
      } else {
        throw Exception('No calling list found for this user.');
      }
    } else {
      throw Exception('Failed to load user list.');
    }
  }
  // NEW: Function to get the call statistics for a specific list
  Future<Map<String, dynamic>> fetchCallStats({required String listId}) async {
    // The listId is part of the URL path
    final Uri uri = Uri.parse('$_baseUrl/list/$listId');

    final response = await http.get(uri);

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to load call statistics.');
    }
  }
}