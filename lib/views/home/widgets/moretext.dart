import 'package:deliver_ease/utils/constance/app_color.dart';
import 'package:flutter/material.dart';

class MoreTextWidget extends StatelessWidget {
  const MoreTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'More',
          style: TextStyle(color: locationIcon, fontWeight: FontWeight.w600),
        ),
        Icon(
          Icons.keyboard_arrow_down,
          size: 25,
          color: locationIcon,
        )
      ],
    );
  }
}
