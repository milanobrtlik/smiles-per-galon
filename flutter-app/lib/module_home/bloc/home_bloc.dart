import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:graphql/client.dart';
import 'package:latlng/latlng.dart';
import 'package:map/map.dart';
import 'package:meta/meta.dart';
import 'package:whereisourcar/module_home/graphql/home.graphql.dart';
import 'package:whereisourcar/module_map/bloc/map_bloc.dart';

part 'home_event.dart';

part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc({
    required this.client,
    required this.mapBloc,
  }) : super(HomeState(errors: [])) {
    on<HomeEnteredEvent>(_onHomeEntered);
  }

  final GraphQLClient client;
  final MapBloc mapBloc;

  FutureOr<void> _onHomeEntered(
    HomeEnteredEvent event,
    Emitter<HomeState> emit,
  ) async {
    _subscribeToMyPositionChanges();
    final result = await client.query$home();
    if (result.hasException) {
      emit(state.copyWith(
        errors: state.errors..add(result.exception.toString()),
      ));
    } else {
      final list = result.parsedData!.carList;
      mapBloc.add(MapPinsChangedEvent(list));
    }
  }

  Future<void> _subscribeToMyPositionChanges() async {
    if (!await Geolocator.isLocationServiceEnabled()) {
      return Future.error('Location services are disabled.');
    }
    LocationPermission permission;
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
        'Location permissions are permanently denied, we cannot request permissions.',
      );
    }
    Geolocator.getPositionStream(
      locationSettings: const LocationSettings(
        accuracy: LocationAccuracy.high,
      ),
    ).listen((event) {
      if(isClosed) return;
      mapBloc.add(MapMyPositionChangedEvent(
        LatLng(event.latitude, event.longitude),
      ));
    });
  }
}
