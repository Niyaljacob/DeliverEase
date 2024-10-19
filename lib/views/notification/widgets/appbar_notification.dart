import 'package:deliver_ease/utils/constance/image.dart';
import 'package:flutter/material.dart';

class CustomNotificationAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomNotificationAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Navigator.canPop(context)
          ? GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Image.asset(backArrow),
            )
          : Container(), 
      title: const Text('Notifications'),
      shadowColor: Colors.grey,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}