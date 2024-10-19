import 'package:deliver_ease/bloc/notification_bloc/notification_event.dart';
import 'package:deliver_ease/bloc/notification_bloc/notification_state.dart';
import 'package:deliver_ease/utils/constance/image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timeago/timeago.dart' as timeago;

import '../../bloc/notification_bloc/notification_bloc.dart';


class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<NotificationBloc>(context).add(FetchNotifications());
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
  leading: Navigator.canPop(context)
      ? GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Image.asset(backArrow),
        )
      : Container(), 
  title: const Text('Notifications'),
  shadowColor: Colors.grey,
),

      body: BlocBuilder<NotificationBloc, NotificationState>(
        builder: (context, state) {
          if (state is NotificationLoading) {
            return const Center(
              child: CircularProgressIndicator(
                color: Colors.green,
                strokeWidth: 5,
              ),
            );
          } else if (state is NotificationLoaded) {
            return state.notifications.isNotEmpty
                ? ListView.separated(
                    itemBuilder: (context, index) {
                      final data = state.notifications[index];
                      String imagePath;
                      if (index < imagess.length) {
                        imagePath = imagess[index];
                      } else {
                        imagePath = 'assets/default_image.png'; 
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
                  )
                : const Center(child: Text('No notifications available.'));
          } else if (state is NotificationError) {
            return const Center(
              child: Text('Failed to load notifications'),
            );
          }
          return const Center(
            child: CircularProgressIndicator(
              color: Colors.green,
              strokeWidth: 5,
            ),
          );
        },
      ),
    );
  }
}
