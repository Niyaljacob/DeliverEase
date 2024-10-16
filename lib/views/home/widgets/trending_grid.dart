import 'package:deliver_ease/utils/constance/image.dart';
import 'package:deliver_ease/utils/constance/space.dart';
import 'package:flutter/material.dart';

class TrendingGrid extends StatelessWidget {
  const TrendingGrid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: SizedBox(
        height: 200,
        child: GridView.builder(
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisExtent: 280),
          itemBuilder: (context, index) {
            return Row(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset(
                      trending,
                    )),
                kWidth10,
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Text('Mithas Bhandar',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),), Text('Sweets, North Indian'), Text('(store location)  |  6.4 kms'), Row(
                    children: [
                      Icon(Icons.star,size: 13,),
                      kWidth5,
                      Text('4.1  |  45 mins'),
                    ],
                  )],
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
