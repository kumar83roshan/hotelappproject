class Request {
  final String id;            // Use final for instance fields
  final String guestName;
  final String description;
  bool isCompleted;

  Request({
    required this.id,
    required this.guestName,
    required this.description,
    this.isCompleted = false,
  });
}
