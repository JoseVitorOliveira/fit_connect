/* import 'package:fit_connect/screens/home.dart';
import 'package:fit_connect/screens/splash_screen.dart'; */
import 'package:fit_connect/screens/sign_in.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignIn(),
    );
  }
}
