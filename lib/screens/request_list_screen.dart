import 'package:flutter/material.dart';

class RequestListScreen extends StatelessWidget {
  final String username;
  final String hotelName;
  final String hotelLogo;

  const RequestListScreen({
    super.key,
    required this.username,
    required this.hotelName,
    required this.hotelLogo,
  });

  @override
  Widget build(BuildContext context) {
    // Sample data
    final List<Map<String, dynamic>> requests = [
      {
        'roomNo': '101',
        'guestName': 'John Doe',
        'details': 'Need extra towels',
        'status': 'Pending',
      },
      {
        'roomNo': '102',
        'guestName': 'Jane Smith',
        'details': 'Room cleaning request',
        'status': 'Accepted',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Requests'),
      ),
      body: ListView.builder(
        itemCount: requests.length,
        itemBuilder: (context, index) {
          final request = requests[index];
          return ListTile(
            title: Text('Room: ${request['roomNo']} - ${request['guestName']}'),
            subtitle: Text(request['details']),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Handle accept action
                  },
                  child: const Text('Accept'),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () {
                    // Handle reject action
                  },
                  child: const Text('Reject'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
