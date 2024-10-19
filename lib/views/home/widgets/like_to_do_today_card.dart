import 'package:deliver_ease/utils/constance/image.dart';
import 'package:flutter/material.dart';

class GridViewToDoToday extends StatelessWidget {
  const GridViewToDoToday({super.key});
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: GridView.builder(
       
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4, mainAxisExtent: 120, mainAxisSpacing: 15, crossAxisSpacing: 15),
         physics:const NeverScrollableScrollPhysics(),
        itemCount: 8,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Image.asset(images[index]),
              Text(
                names[index],
                textAlign: TextAlign.center,
                style: const TextStyle(fontWeight: FontWeight.w600, letterSpacing: 0.5),
              )
            ],
          );
        },
      ),
    );
  }
}
