import 'dart:convert';
import 'package:deliver_ease/model/notification_model/notification_model.dart';
import 'package:http/http.dart' as http;

class NotificationRepository {
  final String apiUrl = "https://raw.githubusercontent.com/shabeersha/test-api/main/test-notifications.json";


  Future<NotificationResponse> fetchNotifications() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {

      final jsonResponse = json.decode(response.body);
      return NotificationResponse.fromJson(jsonResponse);
    } else {

      throw Exception('Failed to load notifications');
    }
  }
}
