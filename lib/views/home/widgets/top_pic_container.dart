import 'package:deliver_ease/utils/constance/app_color.dart';
import 'package:deliver_ease/utils/constance/image.dart';
import 'package:deliver_ease/utils/constance/space.dart';
import 'package:flutter/material.dart';

class DiscountScrollableWidget extends StatelessWidget {
  const DiscountScrollableWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<Color> backgroundColors = [locationIcon, Colors.red, Colors.green];

    return SizedBox(
      height: 200, 
      child: ListView.builder(
        scrollDirection: Axis.horizontal, 
        itemCount: 3, 
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 10), 
            child: Stack(
              children: [
                Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width * 0.88, 
                  decoration: BoxDecoration(
                    color: backgroundColors[index], 
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'DISCOUNT\n25% ALL\nFRUITS',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: whiteColor,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            shadowColor: Colors.transparent,
                            backgroundColor: Colors.orange,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                            ),
                            minimumSize: const Size(100, 10),
                            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                            textStyle: const TextStyle(fontSize: 18),
                          ),
                          child: const Text(
                            'CHECK NOW',
                            style: TextStyle(
                              color: whiteColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.5,
                            ),
                          ),
                        ),
                        kHight15
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 160,
                  bottom: 0,
                  child: Image.asset(discount),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
