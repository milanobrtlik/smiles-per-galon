part of 'car_write_bloc.dart';

@immutable
abstract class CarWriteState {}

class CarWriteInitialState extends CarWriteState {}

class CarWriteIdleState extends CarWriteState {
  final Fragment$CarDetail? car;

  CarWriteIdleState(this.car);
}

class CarWriteErrorState extends CarWriteState {
  final String message;

  CarWriteErrorState(this.message);
}
