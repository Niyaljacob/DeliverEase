import 'package:deliver_ease/views/bottom_nav/main_bottom.dart';
import 'package:flutter/material.dart';
import 'package:deliver_ease/views/splashscreen/splash_screen.dart';
import 'package:deliver_ease/views/notification/notification.dart';

class AppRoutes {
  static const String splashScreen = '/';
  static const String notificationScreen = '/notification';
  static const String bottomNavFirstPage = '/home';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashScreen:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case notificationScreen:
        return MaterialPageRoute(builder: (_) => const NotificationScreen());
      case bottomNavFirstPage:
        return MaterialPageRoute(builder: (_) => BottomNavFirstPage()); 
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
