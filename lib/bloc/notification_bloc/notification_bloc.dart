import 'package:deliver_ease/bloc/notification_bloc/notification_state.dart';
import 'package:deliver_ease/service/notification/notification_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'notification_event.dart';

class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  final NotificationRepository repository;

  NotificationBloc({required this.repository}) : super(NotificationInitial()) {
    on<FetchNotifications>((event, emit) async {
      emit(NotificationLoading());
      try {
        final response = await repository.fetchNotifications();
        emit(NotificationLoaded(notifications: response.data));
      } catch (e) {
        emit(NotificationError(message: e.toString()));
      }
    });
  }
}
