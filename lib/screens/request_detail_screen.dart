import 'package:flutter/material.dart';

class RequestDetailScreen extends StatelessWidget {
  const RequestDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Request Details')),
      body: const Center(
        child: Text('Details of the selected request will appear here.'),
      ),
    );
  }
}
