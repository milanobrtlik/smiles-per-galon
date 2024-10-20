part of 'car_list_bloc.dart';

@immutable
abstract class CarListState {}

class CarListInitial extends CarListState {}

class CarListLoadingState extends CarListState {}

class CarListIdleState extends CarListState {
  final List<Fragment$CarList> data;

  CarListIdleState(this.data);
}

class CarListErrorState extends CarListState {
  final String message;

  CarListErrorState(this.message);
}
