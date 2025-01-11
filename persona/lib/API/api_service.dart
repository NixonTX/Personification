// api_service.dart
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class ApiService {
  final String _baseUrl = 'http://10.0.2.2:8000'; // Your local server URL
  final FlutterSecureStorage storage = FlutterSecureStorage(); // For secure storage

  // Sign Up method
  Future<void> signUp(String fullName, String username, String email, String password, String phoneNumber) async {
    final url = Uri.parse('$_baseUrl/api/user/signup/');
    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'full_name': fullName,
        'username': username,
        'email': email,
        'password': password,
        'confirm_password': password,
        'phone_number': phoneNumber,
      }),
    );

    if (response.statusCode == 201) {
      print('Sign Up Successful');
    } else {
      throw Exception('Failed to sign up: ${response.body}');
    }
  }

  // Login method
  Future<void> login(String username, String password) async {
    final url = Uri.parse('$_baseUrl/api/user/login/'); // Ensure this matches your endpoint
    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'username': username,  // Dynamic username
        'password': password,  // Dynamic password
      }),
    );

    if (response.statusCode == 200) {
      var responseBody = jsonDecode(response.body);
      await storage.write(key: 'token', value: responseBody['token']); // Save the token securely
      print('Login Successful');
    } else {
      throw Exception('Invalid credentials: ${response.body}'); // Handle invalid credentials
    }
  }

  // Logout method
  Future<void> logout() async {
    // Clear the stored token or user session
    await storage.delete(key: 'token');

    // Call the API endpoint for logging out
    final url = Uri.parse('$_baseUrl/api/user/logout/'); // Update with your logout endpoint
    final response = await http.post(
      url,
      headers: {'Authorization': 'Bearer ${await storage.read(key: 'token')}'},
    );

    if (response.statusCode == 200) {
      print('Logout Successful');
    } else {
      throw Exception('Failed to log out: ${response.body}');
    }
  }
}
