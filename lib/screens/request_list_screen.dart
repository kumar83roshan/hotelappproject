import 'package:flutter/material.dart';

class RequestListScreen extends StatelessWidget {
  // Constructor no longer marked as const because 'requests' is not constant
  RequestListScreen({super.key});

  // Sample request data (non-constant)
  final List<Map<String, String>> requests = [
    {
      'room': '101',
      'guest': 'John Doe',
      'detail': 'Need extra towels',
    },
    {
      'room': '202',
      'guest': 'Jane Smith',
      'detail': 'Room cleaning request',
    },
    {
      'room': '303',
      'guest': 'Alice Johnson',
      'detail': 'Require dinner service',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Guest Requests'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: requests.length,
          itemBuilder: (context, index) {
            final request = requests[index];
            return RequestCard(
              roomNo: request['room']!,
              guestName: request['guest']!,
              requestDetail: request['detail']!,
              onAttend: () {
                // Handle attend action
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text("Attending request for room ${request['room']}")));
              },
              onReject: () {
                // Handle reject action
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text("Rejected request for room ${request['room']}")));
              },
            );
          },
        ),
      ),
    );
  }
}

// Widget for a single request card
class RequestCard extends StatelessWidget {
  final String roomNo;
  final String guestName;
  final String requestDetail;
  final VoidCallback onAttend;
  final VoidCallback onReject;

  const RequestCard({
    super.key,
    required this.roomNo,
    required this.guestName,
    required this.requestDetail,
    required this.onAttend,
    required this.onReject,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Room Number and Guest Name
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Room: $roomNo',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Text(
                  guestName,
                  style: const TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            // Request Details
            Text(
              requestDetail,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16),
            // Buttons to attend or reject the request
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                OutlinedButton.icon(
                  onPressed: onReject,
                  icon: const Icon(Icons.cancel, color: Colors.red),
                  label: const Text('Reject'),
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.red,
                  ),
                ),
                const SizedBox(width: 16),
                ElevatedButton.icon(
                  onPressed: onAttend,
                  icon: const Icon(Icons.check_circle, color: Colors.white),
                  label: const Text('Attend'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
