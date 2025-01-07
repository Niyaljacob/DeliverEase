import 'dart:async';
import 'package:deliver_ease/utils/constance/image.dart';
import 'package:deliver_ease/utils/routes/app_routes.dart';
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
    
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, AppRoutes.bottomNavFirstPage);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        //splash screen image
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
