import 'package:deliver_ease/bloc/notification_bloc/notification_bloc.dart';
import 'package:deliver_ease/service/notification/notification_repo.dart';
import 'package:deliver_ease/utils/constance/theme.dart';
import 'package:deliver_ease/utils/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>NotificationBloc(repository: NotificationRepository())),
      ],
      child: MaterialApp(
        theme: Themes.lightModeTheme,
          darkTheme: Themes.darkModeTheme,
        debugShowCheckedModeBanner: false,
        initialRoute: AppRoutes.splashScreen,
        onGenerateRoute: AppRoutes.generateRoute,
      ),
    );
  }
}

