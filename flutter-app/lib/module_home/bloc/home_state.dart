part of 'home_bloc.dart';

class HomeState {
  final List<Query$home$carList>? historyList;
  final LatLng? myPosition;
  final List<String> errors;
  final MapController? mapController;

  HomeState({
    this.historyList,
    this.myPosition,
    required this.errors,
    this.mapController,
  });

  HomeState copyWith({
    List<Query$home$carList>? historyList,
    final LatLng? myPosition,
    List<String>? errors,
    MapController? mapController,
  }) {
    return HomeState(
      historyList: historyList ?? this.historyList,
      myPosition: myPosition ?? this.myPosition,
      errors: errors ?? this.errors,
      mapController: mapController ?? this.mapController,
    );
  }
}
