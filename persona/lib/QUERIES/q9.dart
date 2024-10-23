import 'package:flutter/material.dart';
import 'package:persona/QUERIES/q10.dart';
import 'package:persona/QUERIES/q8.dart';  // Import Q3 for option navigation

class Q9 extends StatefulWidget {
  const Q9({super.key});

  @override
  State<Q9> createState() => _Q9State();
}

class _Q9State extends State<Q9> {
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
              MaterialPageRoute(builder: (context) => Q8()),  // Navigate back to Q1
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
                  "When faced with a challenge, what is your initial reaction?",
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
                  optionContainer("Develop a detailed plan to tackle it"),
                  const SizedBox(height: 5),
                  optionContainer("Jump in and figure it out as you go"),
                  const SizedBox(height: 5),
                  optionContainer("Ask for support or collaborate with others"),
                  const SizedBox(height: 5),
                  optionContainer("Find a logical or creative solution"),
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
          MaterialPageRoute(builder: (context) => Q10()),  // Navigate to Q3
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
