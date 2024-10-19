import 'dart:async';
import 'package:deliver_ease/utils/constance/image.dart';
import 'package:deliver_ease/views/bottom_nav/main_bottom.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Redirecting to another screen after 5 seconds
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) =>  BottomNavFirstPage()), 
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
        splash, 
           width: MediaQuery.of(context).size.width, 
        height: MediaQuery.of(context).size.height, 
        fit: BoxFit.cover, 
        ),
      ),
    );
  }
}
