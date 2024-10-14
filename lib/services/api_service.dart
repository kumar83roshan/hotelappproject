import 'package:http/http.dart' as http;
import 'dart:convert';  // Import to decode JSON
import 'package:staff_app/models/request.dart'; 

class ApiService {
  Future<List<Request>> fetchRequests() async {
    final response = await http.get(Uri.parse('https://example.com/requests'));

    if (response.statusCode == 200) {
      // Decode the response body (String) into a List<dynamic>
      final List<dynamic> jsonResponse = jsonDecode(response.body);

      // Map the decoded JSON to a list of Request objects
      return jsonResponse.map((data) => Request.fromJson(data)).toList();
    } else {
      throw Exception('Failed to load requests');
    }
  }
}
