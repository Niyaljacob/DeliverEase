import 'package:deliver_ease/utils/constance/theme.dart';
import 'package:deliver_ease/views/bottom_nav/main_bottom.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Themes.lightModeTheme,
        darkTheme: Themes.darkModeTheme,
      debugShowCheckedModeBanner: false,
      home:  BottomNavFirstPage(),
    );
  }
}

