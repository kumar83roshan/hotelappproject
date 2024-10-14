import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiService {
  final String baseUrl = "https://api.hotel.com/requests";

  Future<List<Request>> fetchRequests() async {
    final response = await http.get(Uri.parse(baseUrl));
    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((data) => Request.fromJson(data)).toList();
    } else {
      throw Exception('Failed to load requests');
    }
  }
}