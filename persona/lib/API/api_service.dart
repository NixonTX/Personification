// api_service.dart
import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  final String _baseUrl = 'http://10.0.2.2:8000'; // Use your local IP address or emulator loopback

  Future<void> signUp(String fullName, String username, String email, String password, String phoneNumber) async {
    final url = Uri.parse('$_baseUrl/api/user/register/');
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
}
