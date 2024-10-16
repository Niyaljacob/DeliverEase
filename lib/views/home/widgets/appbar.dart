import 'package:deliver_ease/utils/constance/image.dart';
import 'package:flutter/material.dart';
import 'package:deliver_ease/utils/constance/app_color.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(120),
      child: Padding(
        padding: const EdgeInsets.all(11.0),
        child: Container(
          padding: const EdgeInsets.only(bottom: 10),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.location_on,
                      size: 25.0,
                      color: locationIcon,
                    ),
                    SizedBox(width: 5),
                    Text(
                      'ABCD, New Delhi',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 5),
                    Icon(
                      Icons.keyboard_arrow_down,
                      size: 30.0,
                      color: locationIcon,
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 14),
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(238, 238, 238, 1.0),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: 'Search for products/stores',
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.search,
                                size: 30,
                                color: locationIcon,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Image.asset(
                      notification,
                      width: 30,
                      height: 30,
                    ),
                    const SizedBox(width: 10),
                    Image.asset(
                      tag,
                      width: 30,
                      height: 30,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(120);
}
