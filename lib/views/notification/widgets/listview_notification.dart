import 'package:deliver_ease/model/notification_model/notification_model.dart';
import 'package:deliver_ease/utils/constance/image.dart';
import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;

class NotificationListView extends StatelessWidget {
  final List<NotificationData> notifications;
  const NotificationListView({
    super.key, required this.notifications,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) {
          final data = notifications[index];
          String imagePath;
          if (index < imagess.length) {
            imagePath = imagess[index];
          } else {
            imagePath = 'assets/nodata.jpg'; 
          }
        
          return Padding(
            padding: const EdgeInsets.all(5),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  imagePath,
                  height: 50,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        data.title,
                        style: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        data.body,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: const TextStyle(fontSize: 15),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        timeago.format(DateTime.parse(data.timestamp)),
                        style: const TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
        separatorBuilder: (context, index) => const Divider(),
        itemCount: imagess.length,
      );
  }
}



