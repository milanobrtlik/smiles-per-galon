part of 'car_write_bloc.dart';

@immutable
abstract class CarWriteEvent {}

class CarWriteOpenedEvent extends CarWriteEvent {
  final Fragment$CarList? fragment$carList;

  CarWriteOpenedEvent(this.fragment$carList);
}

class CarWriteLicensePlateChangedEvent extends CarWriteEvent {
  final String licensePlate;

  CarWriteLicensePlateChangedEvent(this.licensePlate);
}

class CarWriteUserInvitedEvent extends CarWriteEvent {}

class CarWriteUserRemovedEvent extends CarWriteEvent {
  final Fragment$UserFragment user;

  CarWriteUserRemovedEvent(this.user);
}

class CarDeleteEvent extends CarWriteEvent {
  final Fragment$CarList car;

  CarDeleteEvent(this.car);
}
