import 'package:deliver_ease/bloc/notification_bloc/notification_bloc.dart';
import 'package:deliver_ease/bloc/notification_bloc/notification_state.dart';
import 'package:deliver_ease/views/notification/widgets/listview_notification.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class NotificationBuilder extends StatelessWidget {
  const NotificationBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotificationBloc, NotificationState>(
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
              ? NotificationListView(notifications: state.notifications,) //Notification page List View separated
              
              : const Center(child: Text('No notifications available.'));
        } else if (state is NotificationError) {
          return const Center(
            //showing faild message
            child: Text('Failed to load notifications'),
          );
        }
        return const Center(
          // showing CircularProgressIndicator when its loading 
          child: CircularProgressIndicator(
            color: Colors.green,
            strokeWidth: 5,
          ),
        );
      },
    );
  }
}

