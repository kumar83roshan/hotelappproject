import 'package:flutter/material.dart';
import '../models/request.dart';
import '../services/api_service.dart';

class RequestProvider extends ChangeNotifier {
  List<Request> _requests = [];

  List<Request> get requests => _requests;

  void fetchRequests() async {
    _requests = await ApiService().fetchRequests();
    notifyListeners();
  }

  void markAsCompleted(String requestId) {
    _requests.firstWhere((request) => request.id == requestId).isCompleted = true;
    notifyListeners();
  }
}