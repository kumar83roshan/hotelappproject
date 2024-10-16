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
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(hotelName),  // Hotel name on the left
            Text('Staff: $username'),  // Staff name in the center
            Image.asset(
              hotelLogo,
              height: 40,  // Adjust the logo size as needed
            ),  // Hotel logo on the right
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: requests.length,
          itemBuilder: (context, index) {
            final request = requests[index];
            return Card(  // Optional: Use a Card for better aesthetics
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              child: ListTile(
                title: Text('Room: ${request['roomNo']} - ${request['guestName']}'),
                subtitle: Text(request['details']),
                trailing: ElevatedButton(
                  onPressed: () {
                    // Handle accept action
                  },
                  child: const Text('Accept'),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
