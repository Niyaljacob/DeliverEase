import 'package:deliver_ease/model/store_model/store_model.dart';
import 'package:deliver_ease/utils/constance/app_color.dart';
import 'package:deliver_ease/utils/constance/space.dart';
import 'package:flutter/material.dart';

class NearByWidget extends StatelessWidget {
   NearByWidget({super.key});

 
  final List<Store> stores = [
    Store(
      name: 'Freshly Baker',
      description: 'Sweets, North Indian',
      distance: 'Site No - 1  |  6.4 kms',
      rating: '4.1',
      deliveryTime: '45 mins',
      imageUrl: 'assets/lastphoto.png',
      offer: 'Upto 10% OFF',
      availableItems: '3400+ items available',
    ),
    Store(
      name: 'Grocery Hub',
      description: 'Daily Essentials',
      distance: 'Site No - 2  |  3.2 kms',
      rating: '4.5',
      deliveryTime: '30 mins',
      imageUrl: 'assets/lastphoto.png',
      offer: 'Upto 15% OFF',
      availableItems: '2000+ items available',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 320,
      child: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 20,right: 16),
            child: NearByStores(store: stores[index]),
          );
        },
        separatorBuilder: (context, index) =>kHight20,
        itemCount: stores.length,
      ),
    );
  }
}

class NearByStores extends StatelessWidget {
  final Store store; 

  const NearByStores({super.key, required this.store});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.asset(
              store.imageUrl,
              height: 80,
              fit: BoxFit.contain,
            ),
          ),
          kWidth20,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(store.name, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      kHight5,
                      Text(store.description),
                      Text(store.distance),
                    ],
                  ),
                  kWidth20,
                  Padding(
                    padding: const EdgeInsets.only(left: 45),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Icon(Icons.star, size: 18),
                            kWidth5,
                            Text(
                              store.rating,
                              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                          ],
                        ),
                        Text(
                          store.deliveryTime,
                          style: const TextStyle(fontSize: 16, color: Colors.deepOrange, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              kHight10,
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  color: Colors.grey.shade300,
                ),
                width: 50,
                height: 20,
                child: const Center(
                    child: Text(
                  'Top Store',
                  style: TextStyle(fontSize: 8, fontWeight: FontWeight.bold,color: black),
                )),
              ),
              kHight10,
              Container(
                color: Colors.grey.shade400,
                width: 258,
                height: 1,
              ),
              kHight10,
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/%.png'),
                  kWidth5,
                  Text(
                    store.offer,
                    style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                  kWidth5,
                  Image.asset('assets/box.png'),
                  kWidth5,
                  Text(
                    store.availableItems,
                    style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}