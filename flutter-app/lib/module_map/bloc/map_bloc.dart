import 'dart:async';
import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:flutter/gestures.dart';
import 'package:latlng/latlng.dart';
import 'package:map/map.dart';
import 'package:meta/meta.dart';
import 'package:whereisourcar/custom_graphql_scalars.dart';
import 'package:whereisourcar/module_home/graphql/home.graphql.dart';

part 'map_event.dart';

part 'map_state.dart';

class MapBloc extends Bloc<MapEvent, MapState> {
  MapBloc() : super(MapState()) {
    on<MapDoubleTapEvent>(_onDoubleTap);
    on<MapScaleStartEvent>(_onScaleStart);
    on<MapScaleUpdateEvent>(_onScaleUpdate);
    on<MapPointerSignalEvent>(_onPointerSignal);
    on<MapMyPositionChangedEvent>(_onMyPositionChanged);
    on<MapPinsChangedEvent>(_onPinsChanged);
  }

  FutureOr<void> _onDoubleTap(
    MapDoubleTapEvent event,
    Emitter<MapState> emit,
  ) async {
    if (state.controller == null) return;
    const delta = 0.5;
    final zoom = (state.controller!.zoom + delta).clamp(2.0, 19.0);

    event.transformer.setZoomInPlace(zoom, event.position);

    emit(state.copyWith());
  }

  FutureOr<void> _onScaleStart(
    MapScaleStartEvent event,
    Emitter<MapState> emit,
  ) async {
    emit(state.copyWith(
      dragStart: event.details.focalPoint,
      scaleStart: 1.0,
    ));
  }

  FutureOr<void> _onScaleUpdate(
    MapScaleUpdateEvent event,
    Emitter<MapState> emit,
  ) async {
    if (state.controller == null) return;
    final scaleDiff = event.details.scale - state.scaleStart;
    final controller = state.controller;
    final scaleStart = event.details.scale;

    if (scaleDiff > 0) {
      if (controller!.zoom < 20) controller.zoom += 0.02;
      emit(state.copyWith(
        controller: controller,
        scaleStart: scaleStart,
      ));
    } else if (scaleDiff < 0) {
      if (controller!.zoom > 2) controller.zoom -= 0.02;
      if (controller.zoom < 1) {
        controller.zoom = 1;
      }
      emit(state.copyWith(
        controller: controller,
        scaleStart: scaleStart,
      ));
    } else {
      final now = event.details.focalPoint;
      var diff = now - state.dragStart!;
      final dragStart = now;
      final h = event.transformer.constraints.maxHeight;

      final vp = event.transformer.getViewport();
      if (diff.dy < 0 && vp.bottom - diff.dy < h) {
        diff = Offset(diff.dx, 0);
      }

      if (diff.dy > 0 && vp.top - diff.dy > 0) {
        diff = Offset(diff.dx, 0);
      }

      event.transformer.drag(diff.dx, diff.dy);
      emit(state.copyWith(
        dragStart: dragStart,
        scaleStart: scaleStart,
      ));
    }
  }

  FutureOr<void> _onPointerSignal(
    MapPointerSignalEvent event,
    Emitter<MapState> emit,
  ) async {
    if (state.controller == null) return;
    if (event.event is PointerScrollEvent) {
      final delta = (event.event as PointerScrollEvent).scrollDelta.dy / -1000;
      final zoom = (state.controller!.zoom + delta).clamp(2.0, 19.0);
      event.transformer.setZoomInPlace(
        zoom,
        (event.event as PointerScrollEvent).localPosition,
      );
    }
  }

  FutureOr<void> _onMyPositionChanged(
    MapMyPositionChangedEvent event,
    Emitter<MapState> emit,
  ) async {
    emit(state.copyWith(
      myPosition: event.latLng,
      controller: state.controller ?? MapController(location: event.latLng, zoom: 17),
    ));
  }

  FutureOr<void> _onPinsChanged(
    MapPinsChangedEvent event,
    Emitter<MapState> emit,
  ) async {
    final cars = event.historyList
        .where((c) => c.lastPosition?.location.coordinates != null)
        .toList();
    final Position firstOne;
    try {
      firstOne = cars
          .firstWhere((car) => car.lastPosition?.location.coordinates != null)
          .lastPosition!
          .location
          .coordinates!;
    } on StateError catch (_) {
      return;
    }

    emit(
      state.copyWith(
        pins: cars,
        controller: state.controller ??
            MapController(
              location: LatLng(firstOne.lat, firstOne.lon),
              zoom: 17.5,

            ),
      ),
    );
  }
}
