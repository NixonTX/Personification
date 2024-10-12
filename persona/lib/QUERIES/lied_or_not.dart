import 'package:flutter/material.dart';

class LiedOrNot extends StatelessWidget {
  const LiedOrNot({super.key});

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
            // Navigator.pop(context);
          },
        ),
      ),
      backgroundColor: Colors.pinkAccent,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 0.0),
        child: Column(
          children: [
            const SizedBox(height: 5),
            // Question Container
            Padding(
              padding: const EdgeInsets.only(top: 5, bottom: 5),
              child: Container(
                width: double.infinity,
                color: const Color.fromARGB(255, 160, 215, 240),
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "Did you lied in the previous query?",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 25,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            const SizedBox(height: 50),

            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 32.0), // Left and right padding
              child: Column(
                children: [
                  optionContainer("Yes, I did lie"),
                  const SizedBox(height: 5),
                  optionContainer("No, I didn't lie"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  //
  Widget optionContainer(String optionText) {
    return Container(
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
    );
  }
}
