import 'package:deliver_ease/utils/constance/space.dart';
import 'package:deliver_ease/views/home/widgets/Top_pic_container.dart';
import 'package:deliver_ease/views/home/widgets/appbar.dart';
import 'package:deliver_ease/views/home/widgets/button.dart';
import 'package:deliver_ease/views/home/widgets/crazy_deals.dart';
import 'package:deliver_ease/views/home/widgets/headings.dart';
import 'package:deliver_ease/views/home/widgets/like_to_do_today_card.dart';
import 'package:deliver_ease/views/home/widgets/moretext.dart';
import 'package:deliver_ease/views/home/widgets/nearby_store_widget.dart';
import 'package:deliver_ease/views/home/widgets/refer_container.dart';
import 'package:deliver_ease/views/home/widgets/trending_grid.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
       
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    Heading1(),
                    kHight20,
                    //product grid view UI
                    GridViewToDoToday(),
                    //dropdown text UI
                    MoreTextWidget(),
                    kHight10,
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Heading2(),
                kHight10,
                //discount product ListView Horizontal UI
                DiscountScrollableWidget(),
                kHight10,
               
                ],
              ),
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Heading3(head: 'Trending', suffix: "See all"),
                kHight10,
                //Trending product Grid View Horizontal UI
                TrendingGrid(),
                kHight10
              ],
            ),

            const Column(
              children: [
                Heading4(),
                kHight10,
                //CrazyDeals product List View Horizontal UI
                CrazeDealListView(),
                kHight20,
                //user Refer container UI
                ReferContainer(),
                kHight20
              ],
            ),

             Column(
              children: [
                const Heading3(head: "Nearby stores", suffix: "See all"),
                kHight10,
                // near by stores ListView Separated UI
                NearByWidget(),
                kHight35,
                // View All Stores button 
                const StoresButton(),
                kHight50,
                kHight50
              ],
            )
          ],
        ),
      ),
    );
  }
}

