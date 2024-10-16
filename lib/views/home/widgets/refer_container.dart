import 'package:deliver_ease/utils/constance/app_color.dart';
import 'package:deliver_ease/utils/constance/image.dart';
import 'package:deliver_ease/utils/constance/space.dart';
import 'package:flutter/material.dart';


class ReferContainer extends StatelessWidget {
  const ReferContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        height: 100,
        width: double.infinity,
        decoration: BoxDecoration(color: locationIcon, borderRadius: BorderRadius.circular(8)),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Refer & Earn', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: whiteColor)),
                  Row(
                    children: [
                      const Text('Invite your friends & earn 15% off',
                          style: TextStyle(
                            color: whiteColor,
                          )),
                      kWidth10,
                      Image.asset(referarrow)
                    ],
                  )
                ],
              ),
              Image.asset(referGiftBox)
            ],
          ),
        ),
      ),
    );
  }
}
