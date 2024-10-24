import 'package:flutter/material.dart';
import 'package:persona/API/api_service.dart';
import 'package:persona/DRAWER/profile_page.dart';
import 'package:persona/MODELS/no_model.dart';
import 'package:persona/QUERIES/q1.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              onTap: () {
    Navigator.pop(context); // Close the drawer
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ProfilePage(), // Navigate to ProfilePage
      ),
    );
  },


            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('About'),
              onTap: () {
                // Navigate to an about page
                Navigator.pop(context); // Close the drawer
                // Add navigation to your About page here if you have one
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                // Navigate to a settings page
                Navigator.pop(context); // Close the drawer
                // Add navigation to your Settings page here if you have one
              },
            ),
            ListTile(
  leading: Icon(Icons.logout),
  title: Text('Logout'),
  onTap: () async {
    Navigator.pop(context); // Close the drawer

    try {
      await ApiService().logout(); // Call the logout method from your ApiService
      // Navigate to the signup page after successful logout
      Navigator.of(context).pushReplacementNamed('/signup'); // Make sure '/signup' is defined in your routes
    } catch (e) {
      // Handle any error during logout, e.g., show a message
      print('Logout failed: $e');
    }
  },
),

          ],
        ),
      ),
      body: Column(
        children: [
          // Title Bar
          Container(
            padding: EdgeInsets.all(16),
            color: Colors.white,
            child: Center(
              child: Text(
                'Welcome back!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          SizedBox(height: 20), // Space between the title and boxes
          // Row for two equal boxes
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      // Navigate to Q1 page when the left box is tapped
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Q1()),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.blue[100],
                        border: Border.all(color: Colors.blue, width: 2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.assignment,
                            size: 50.0,
                            color: Colors.blue,
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Take an Assessment',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue[900],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      // Navigate to NoModel page when the right box is tapped
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => NoModelPage()),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.green[100],
                        border: Border.all(color: Colors.green, width: 2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.person,
                            size: 50.0,
                            color: Colors.green,
                          ),
                          SizedBox(height: 10),
                          Text(
                            'See your Model',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.green[900],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
