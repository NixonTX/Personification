import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Icon(
          Icons.home,
          size: 100.0, // Size of the icon
          color: Colors.blue, // Color of the icon
        ),
      ),
    );
  }
}
