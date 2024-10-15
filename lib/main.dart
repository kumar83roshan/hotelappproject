import 'package:flutter/material.dart';
import 'screens/login_screen.dart'; // Ensure this import is present

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // Add the named key parameter
  const MyApp({super.key}); 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hotel Chatbot',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginScreen(), // Ensure you're using the const constructor
    );
  }
}
