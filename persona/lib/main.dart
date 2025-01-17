import 'package:flutter/material.dart';
import 'package:persona/DERIVED_MODELS/derived_persona1.dart';
import 'package:persona/DERIVED_MODELS/derived_persona2.dart';
import 'package:persona/DERIVED_MODELS/derived_persona3.dart';
import 'package:persona/DERIVED_MODELS/derived_persona4.dart';
import 'package:persona/DERIVED_MODELS/derived_persona5.dart';
import 'package:persona/HOME/home_page.dart';
import 'package:persona/MODELS/persona1.dart';
import 'package:persona/MODELS/persona2.dart';
import 'package:persona/MODELS/persona3.dart';
import 'package:persona/MODELS/persona4.dart';
import 'package:persona/MODELS/persona5.dart';
import 'package:persona/QUERIES/lied_or_not.dart';
import 'package:persona/QUERIES/q1.dart';
import 'package:persona/QUERIES/q2.dart';
import 'package:persona/QUERIES/q26.dart';
import 'package:persona/USER/login_page.dart';
import 'package:persona/USER/signup_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: Q1()
      // home: SignupPage(),
      home: HomePage(),
      // home: NoModelPage(),

      // initialRoute: '/signup',
      // routes: {
      //   '/login': (context) => LoginPage(),
      //   '/signup': (context) => SignUpPage(),
      //   '/homepage': (context) => HomePage(),
      // },

      // home: LoginPage(),
      // home: LiedOrNot(),
      // home: Persona1(),
      // home: DerivedPersona5(),
      // home: Persona5(),
    );
  }
}
