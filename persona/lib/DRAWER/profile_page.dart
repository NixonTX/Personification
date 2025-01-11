import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Example: Retrieve user information from a global variable or state management solution
    // final user = getCurrentUser(); // Replace this with your actual method to get the user

    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // children: [
          //   Text('Full Name: ${user.fullName}', style: TextStyle(fontSize: 18)),
          //   SizedBox(height: 10),
          //   Text('Username: ${user.username}', style: TextStyle(fontSize: 18)),
          //   SizedBox(height: 10),
          //   Text('Email: ${user.email}', style: TextStyle(fontSize: 18)),
          //   SizedBox(height: 10),
          //   Text('Phone Number: ${user.phoneNumber}', style: TextStyle(fontSize: 18)),
          //   // Add more fields as needed
          // ],
        ),
      ),
    );
  }
}
