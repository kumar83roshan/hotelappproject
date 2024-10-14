import 'package:flutter/material.dart';

class RequestListScreen extends StatelessWidget {
  // Using super parameter for 'key'
  const RequestListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Request List')),
      body: Center(
        child: Text('Request List Screen'),
      ),
    );
  }
}


