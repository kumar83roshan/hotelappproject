import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationService {
  static final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = 
    FlutterLocalNotificationsPlugin();

  static void initialize() {
    const AndroidInitializationSettings initializationSettingsAndroid = 
      AndroidInitializationSettings('app_icon');
    const InitializationSettings initializationSettings =
      InitializationSettings(android: initializationSettingsAndroid);

    flutterLocalNotificationsPlugin.initialize(initializationSettings);
  }

  static void showNotification(String title, String body) {
    const AndroidNotificationDetails androidDetails = AndroidNotificationDetails(
        'channelId', 'channelName', 'channelDescription');
    const NotificationDetails notificationDetails = NotificationDetails(android: androidDetails);

    flutterLocalNotificationsPlugin.show(0, title, body, notificationDetails);
  }
}