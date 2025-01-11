import 'package:flutter/material.dart';
import 'package:persona/QUERIES/q5.dart';

class Q4 extends StatefulWidget {
  const Q4({super.key});

  @override
  State<Q4> createState() => _Q4State(); // Correct naming of the state
}

class _Q4State extends State<Q4> {
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
            // Go back to the previous page
            Navigator.pop(context);
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
                  "If you had a free afternoon, what would you most likely do?",
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
                  optionContainer("Work on a personal goal or project"),
                  const SizedBox(height: 5),
                  optionContainer("Go out and explore something new"),
                  const SizedBox(height: 5),
                  optionContainer("Volunteer or help someone in need"),
                  const SizedBox(height: 5),
                  optionContainer("Research or learn about a new topic"),
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
        // Navigate to Q4 page when an option is pressed
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Q5()), // Change to Q4
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
