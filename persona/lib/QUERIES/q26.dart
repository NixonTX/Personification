import 'package:flutter/material.dart';
import 'package:persona/DERIVED_MODELS/derived_persona1.dart';
import 'package:persona/DERIVED_MODELS/derived_persona2.dart';
import 'package:persona/DERIVED_MODELS/derived_persona3.dart';
import 'package:persona/DERIVED_MODELS/derived_persona4.dart';
import 'package:persona/DERIVED_MODELS/derived_persona5.dart';
import 'dart:math';

import 'package:persona/QUERIES/q25.dart';

class Q26 extends StatefulWidget {
  const Q26({super.key});

  @override
  State<Q26> createState() => _Q1State();
}

class _Q1State extends State<Q26> {
  bool isLoading = false;  // Flag to show or hide the loading indicator

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
            // Navigate back to Q25 page
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Q25()),
            );
          },
        ),
      ),
      backgroundColor: Colors.pinkAccent,
      body: isLoading
          ? Center(
              // Show the CircularProgressIndicator when loading is true
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircularProgressIndicator(),
                  const SizedBox(height: 20),
                  const Text(
                    "Processing...",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            )
          : Padding(
              padding: const EdgeInsets.symmetric(vertical: 0.0),
              child: Column(
                children: [
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
                  Padding(
                    padding: const EdgeInsets.only(top: 5, bottom: 5),
                    child: Container(
                      width: double.infinity,
                      color: const Color.fromARGB(255, 160, 215, 240),
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        "If you were to plan a trip, what would it look like?",
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
                        optionContainer("Well-organized with specific goals"),
                        const SizedBox(height: 5),
                        optionContainer("Spontaneous and full of surprises"),
                        const SizedBox(height: 5),
                        optionContainer("Relaxing and focused on bonding"),
                        const SizedBox(height: 5),
                        optionContainer("An opportunity to learn about the culture"),
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
        // Show progress and navigate after a delay
        setState(() {
          isLoading = true;  // Show the CircularProgressIndicator
        });
        Future.delayed(Duration(seconds: 3), () {
          navigateToRandomDerivedPersona();  // Navigate after 3 seconds
        });
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

  // Method to navigate to a random DerivedPersona
  void navigateToRandomDerivedPersona() {
    Random random = Random();
    int randomIndex = random.nextInt(5);  // Random number between 0 and 4

    Widget nextPage;

    switch (randomIndex) {
      case 0:
        nextPage = DerivedPersona1();  // The Achiever
        break;
      case 1:
        nextPage = DerivedPersona2();  // The Explorer
        break;
      case 2:
        nextPage = DerivedPersona3();  // The Caregiver
        break;
      case 3:
        nextPage = DerivedPersona4();  // The Analyst
        break;
      case 4:
        nextPage = DerivedPersona5();  // The Entertainer
        break;
      default:
        nextPage = DerivedPersona1();  // Fallback in case of an error
    }

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => nextPage),
    );
  }
}
