import 'package:deliver_ease/utils/constance/app_color.dart';
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

class Heading2 extends StatelessWidget {
  const Heading2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text("Top picks for you",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),);
  }
}




class Heading3 extends StatelessWidget {
  final String head;
  final String suffix;

  const Heading3({
    super.key,
    required this.head,
    required this.suffix,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            head,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            suffix,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: locationIcon,
            ),
          ),
        ],
      ),
    );
  }
}

