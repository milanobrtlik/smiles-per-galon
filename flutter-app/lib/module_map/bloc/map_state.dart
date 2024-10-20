part of 'map_bloc.dart';

class MapState {
  final MapController? controller;
  final LatLng? myPosition;
  final List<Query$home$carList>? pins;
  Offset? dragStart;
  double scaleStart;

  MapState({
    this.controller,
    this.myPosition,
    this.pins,
    this.dragStart,
    this.scaleStart = 1.0,
  });

  MapState copyWith({
    MapController? controller,
    LatLng? myPosition,
    List<Query$home$carList>? pins,
    Offset? dragStart,
    double? scaleStart,
    bool? resetDrag,
  }) {
    return MapState(
      controller: controller ?? this.controller,
      myPosition: myPosition ?? this.myPosition,
      pins: pins ?? this.pins,
      dragStart: resetDrag == true ? null : dragStart ?? this.dragStart,
      scaleStart: scaleStart ?? this.scaleStart,
    );
  }
}
