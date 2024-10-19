import 'package:deliver_ease/views/bottom_nav/widget/bottom_nav_widget.dart';
import 'package:deliver_ease/views/home/home_screen.dart';
import 'package:deliver_ease/views/notification/notification.dart';
import 'package:flutter/material.dart';

final ValueNotifier<int> currentPage = ValueNotifier(0);
class BottomNavFirstPage extends StatelessWidget {
   BottomNavFirstPage({super.key});

  final List<Widget>pages=[
    const HomeScreen(),
     NotificationScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: ValueListenableBuilder<int>(
        valueListenable: currentPage,
        builder: (context, value, child) => IndexedStack(
          index: value,
          children: pages,
        ),
      ),
      bottomNavigationBar: ValueListenableBuilder<int>(
        valueListenable: currentPage,
        builder: (context, value, child) => bottomNav(context),
      ),
    );
  }
}