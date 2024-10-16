// lib/models/request.dart
// lib/providers/request_provider.dart

// Import the Request model


class Request {
  final String id;
  final String guestName;
  final String description;
  bool isCompleted;

  Request({
    required this.id,
    required this.guestName,
    required this.description,
    this.isCompleted = false,
  });

  factory Request.fromJson(Map<String, dynamic> json) {
    return Request(
      id: json['id'],
      guestName: json['guestName'],
      description: json['description'],
      isCompleted: json['isCompleted'] ?? false,
    );
  }
}
