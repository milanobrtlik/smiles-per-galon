part of 'home_bloc.dart';

@immutable
abstract class HomeEvent {}

class HomeEnteredEvent extends HomeEvent {}

// class HomeMyPositionUpdateEvent extends HomeEvent {
//   final Position position;
//
//   HomeMyPositionUpdateEvent(this.position);
// }
