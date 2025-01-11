import 'package:flutter/material.dart';
import 'package:persona/QUERIES/q26.dart';
import 'package:persona/QUERIES/q9.dart';  // Import Q3 for option navigation

class Q25 extends StatefulWidget {
  const Q25({super.key});

  @override
  State<Q25> createState() => _Q25State();
}

class _Q25State extends State<Q25> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Queries",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            // Navigate back to Q1 page
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Q9()),  // Navigate back to Q1
            );
          },
        ),
      ),
      backgroundColor: Colors.pinkAccent,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 0.0),
        child: Column(
          children: [
            // Progress bar with badge icon
            Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: Container(
                width: double.infinity,
                color: const Color.fromARGB(255, 160, 215, 240),
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Progress Bar",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                        fontSize: 25,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    // Badge icon
                    Icon(
                      Icons.star,
                      color: Colors.grey,
                      size: 30,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 5),
            // Question Container
            Padding(
              padding: const EdgeInsets.only(top: 5, bottom: 5),
              child: Container(
                width: double.infinity,
                color: const Color.fromARGB(255, 160, 215, 240),
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "How do you usually celebrate an achievement?",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 25,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Column(
                children: [
                  optionContainer("Set new, bigger goals and start planning for them"),
                  const SizedBox(height: 5),
                  optionContainer("Treat yourself with an adventure or new experience"),
                  const SizedBox(height: 5),
                  optionContainer("Celebrate with loved ones and share the moment together"),
                  const SizedBox(height: 5),
                  optionContainer("Reflect on what you’ve learned and think about improvements for 	next time"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Method to create option containers
  Widget optionContainer(String optionText) {
    return GestureDetector(
      onTap: () {
        // Navigate to Q3 page when an option is pressed
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Q26()),  // Navigate to Q3
        );
      },
      child: Container(
        padding: const EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: Colors.blueAccent,
          borderRadius: BorderRadius.circular(8.0),
        ),
        width: double.infinity,
        child: Text(
          optionText,
          style: TextStyle(
            fontSize: 22,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
