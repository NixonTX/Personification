import 'package:flutter/material.dart';
import 'package:persona/QUERIES/q1.dart'; // Ensure this path is correct

class NoModelPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('No Model'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "You don't have a model yet, take an assessment to create one.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, color: Colors.black54),
            ),
            SizedBox(height: 20), // Space between the text and icon
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Q1()),
                );
              },
              child: Icon(
                Icons.assignment,
                size: 70.0, // Size of the icon
                color: Colors.blue, // Color of the icon
              ),
            ),
            SizedBox(height: 10), // Space below the icon
            GestureDetector(
              onTap: () {
                // Navigate to Q1 page when the text is tapped
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Q1()),
                );
              },
              child: Text(
                'Take an Assessment',
                style: TextStyle(fontSize: 18, color: Colors.blue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
