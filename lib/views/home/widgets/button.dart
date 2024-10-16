import 'package:deliver_ease/utils/constance/app_color.dart';
import 'package:flutter/material.dart';

class StoresButton extends StatelessWidget {
  const StoresButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          
        },
        style: ElevatedButton.styleFrom(
          shadowColor: Colors.transparent,
          backgroundColor: locationIcon,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          minimumSize: const Size(100, 10),
          padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 14),
          textStyle: const TextStyle(fontSize: 18),
        ),
        child: const Text(
          'View all stores',
          style: TextStyle(
            color: whiteColor,
            fontSize: 16,
            letterSpacing: 0.5,
          ),
        ),
      ),
    );
  }
}
