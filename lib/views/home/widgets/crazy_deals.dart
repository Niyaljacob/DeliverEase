import 'package:deliver_ease/utils/constance/app_color.dart';
import 'package:deliver_ease/utils/constance/image.dart';
import 'package:deliver_ease/utils/constance/space.dart';
import 'package:flutter/material.dart';


class CrazeDealListView extends StatelessWidget {
  const CrazeDealListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20,right: 5),
      child: SizedBox(
        height: 170,
        child: ListView.separated(
          separatorBuilder: (context, index) => kWidth20,
          scrollDirection: Axis.horizontal,
          itemCount: 2,
          itemBuilder: (context, index) {
            return Container(
              height: 160,
              
              width: 340,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(255, 32, 32, 32),
              ),
              child: Stack(
                children: [
                  Positioned(
                    bottom: 0,
                    right: 10,
                    child: Image.asset(crazyDeals),
                  ),
                  const Positioned(
                      left: 30,
                      top: 30,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Customer favourite\ntop supermarkets',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: whiteColor,
                              letterSpacing: 0.5,
                            ),
                          ),
                          kHight10,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Explore',
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.orange,
                                  letterSpacing: 0.5,
                                ),
                              ),
                              kWidth5,
                              Icon(
                                Icons.keyboard_arrow_right_rounded,
                                color: Colors.orange,
                              )
                            ],
                          )
                        ],
                      ))
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
