import 'package:flutter/material.dart';
import 'screens/login_screen.dart'; 
import 'screens/request_list_screen.dart';
import 'screens/request_detail_screen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hotel Staff App',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginScreen(),
        '/requests': (context) =>  RequestListScreen(),
        '/request-detail': (context) => const RequestDetailScreen(),
      },
    );
  }
}