import 'package:deliver_ease/bloc/notification_bloc/notification_event.dart';
import 'package:deliver_ease/views/notification/widgets/appbar_notification.dart';
import 'package:deliver_ease/views/notification/widgets/notification_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


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
    return const Scaffold(
      appBar: CustomNotificationAppBar(),

      body: NotificationBuilder(),
    );
  }
}




