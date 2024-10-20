part of 'car_list_bloc.dart';

@immutable
abstract class CarListEvent {}

class CarListEnteredEvent extends CarListEvent {}

class CarListRefreshEvent extends CarListEvent {}

class CarListDataReceivedEvent extends CarListEvent {
  final List<Fragment$CarList> data;

  CarListDataReceivedEvent(this.data);
}

class CarListErrorOccurredEvent extends CarListEvent {
  final String error;

  CarListErrorOccurredEvent(this.error);
}
