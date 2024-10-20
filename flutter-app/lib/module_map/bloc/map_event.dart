part of 'map_bloc.dart';

@immutable
abstract class MapEvent {}

class MapMyPositionChangedEvent extends MapEvent {
  final LatLng latLng;

  MapMyPositionChangedEvent(this.latLng);
}

class MapPinsChangedEvent extends MapEvent {
  final List<Query$home$carList> historyList;

  MapPinsChangedEvent(this.historyList);
}

class MapDoubleTapEvent extends MapEvent {
  final MapTransformer transformer;
  final Offset position;

  MapDoubleTapEvent(this.transformer, this.position);
}

class MapScaleStartEvent extends MapEvent {
  final ScaleStartDetails details;

  MapScaleStartEvent(this.details);
}

class MapScaleUpdateEvent extends MapEvent {
  final ScaleUpdateDetails details;
  final MapTransformer transformer;

  MapScaleUpdateEvent(this.details, this.transformer);
}

class MapPointerSignalEvent extends MapEvent {
  final PointerSignalEvent event;
  final MapTransformer transformer;

  MapPointerSignalEvent(this.event, this.transformer);
}
