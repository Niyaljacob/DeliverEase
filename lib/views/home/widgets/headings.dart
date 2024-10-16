import 'package:flutter/material.dart';

class Heading1 extends StatelessWidget {
  const Heading1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text("What would you like to do today?",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),);
  }
}