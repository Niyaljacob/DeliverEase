import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:deliver_ease/utils/constance/app_color.dart';
import 'package:deliver_ease/views/bottom_nav/main_bottom.dart';
import 'package:flutter/material.dart';

CurvedNavigationBar bottomNav(BuildContext context) {
  return CurvedNavigationBar(
    index: 0,
    height: 60.0,
    items: const <Widget>[
      Icon(Icons.home, size: 30, color: primary),
      Icon(Icons.notification_add, size: 30, color: primary),
    ],
    color: Theme.of(context).brightness == Brightness.light ? green : green,
    buttonBackgroundColor: Theme.of(context).brightness == Brightness.light ? whiteColor : black,
    backgroundColor: Theme.of(context).brightness == Brightness.light ? Colors.white : Colors.black,
    animationCurve: Curves.easeInOut,
    animationDuration: const Duration(milliseconds: 600),
    onTap: (index) {
      currentPage.value = index;
    },
  );
}