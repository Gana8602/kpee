import 'dart:convert';

import 'package:android/screens/login.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class RegisterService {
  // API URL
  static const String apiUrl = 'https://kpee.in/api/register.php';

  // Function to register user
  Future<void> registerUser({
    required String name,
    required String email,
    required String phone,
    required String code,
  }) async {
    try {
      // HTTP headers
      final headers = {
        'Content-Type': 'application/x-www-form-urlencoded',
      };

      // Body parameters for the POST request
      final Map<String, String> body = {
        'name': name,
        'email': email,
        'phone': phone,
        'code': code,
      };

      // Making the POST request
      final response = await http.post(
        Uri.parse(apiUrl),
        headers: headers,
        body: body,
      );

      //data validation is response true or false
      final data = response.body.trim();
      final isTrue = data.startsWith("true");

      if (isTrue) {
        Get.to(() => LogoScreen6());
      } else {
        print("Failed to register user. Status Code: ${response.statusCode}");
      }
    } catch (error) {
      // Error handling
      print("An error occurred: $error");
    }
  }
}
