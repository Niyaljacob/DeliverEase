import 'package:deliver_ease/utils/constance/space.dart';
import 'package:deliver_ease/views/home/widgets/appbar.dart';
import 'package:deliver_ease/views/home/widgets/headings.dart';
import 'package:deliver_ease/views/home/widgets/like_to_do_today_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              const Heading1(),
              kHight20,
              GridViewToDoToday(),

          ],
        ),
      ),
    );
  }
}

