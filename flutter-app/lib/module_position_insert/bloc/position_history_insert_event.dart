part of 'position_history_insert_bloc.dart';

@immutable
abstract class PositionHistoryInsertEvent {}

class HistoryInsertCarChangedEvent extends PositionHistoryInsertEvent {
  final String car;

  HistoryInsertCarChangedEvent(this.car);
}

class HistoryInsertCoordinatesChangedEvent extends PositionHistoryInsertEvent {
  final LatLng coordinates;

  HistoryInsertCoordinatesChangedEvent(this.coordinates);
}

class HistoryInsertPhotoChangedEvent extends PositionHistoryInsertEvent {
  final Uint8List data;

  HistoryInsertPhotoChangedEvent(this.data);
}

class HistoryInsertSubmittedEvent extends PositionHistoryInsertEvent {}
