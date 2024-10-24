import 'package:flutter/material.dart';
import 'package:persona/API/api_service.dart';

class LogoutPage extends StatelessWidget {
  final ApiService _apiService = ApiService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Logout'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            // Call the logout function
            await _apiService.logout();

            // Navigate to the signup page after logout
            Navigator.pushReplacementNamed(context, '/signup');
          },
          child: Text('Logout'),
        ),
      ),
    );
  }
}
