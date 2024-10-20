import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:graphql/client.dart';
import 'package:meta/meta.dart';
import 'package:whereisourcar/fragments.graphql.dart';
import 'package:whereisourcar/module_manage/graphql/manage.graphql.dart';

part 'car_list_event.dart';

part 'car_list_state.dart';

class CarListBloc extends Bloc<CarListEvent, CarListState> {
  CarListBloc(this.client) : super(CarListInitial()) {
    query = client.watchQuery$carList();
    query.stream.listen((result) async {
      if (result.hasException && isClosed == false) {
        add(CarListErrorOccurredEvent(result.exception!.toString()));
      }
      if (query.lifecycle == QueryLifecycle.completed && isClosed == false) {
        add(CarListDataReceivedEvent(result.parsedData!.carList));
      }
    });

    on<CarListEnteredEvent>(_onEntered);
    on<CarListRefreshEvent>(_onRefresh);
    on<CarListErrorOccurredEvent>(_onError);
    on<CarListDataReceivedEvent>(_onData);
  }

  final GraphQLClient client;
  late ObservableQuery<Query$carList> query;

  FutureOr<void> _onEntered(
    CarListEnteredEvent event,
    Emitter<CarListState> emit,
  ) async {
    query.fetchResults();
  }

  FutureOr<void> _onRefresh(
    CarListRefreshEvent event,
    Emitter<CarListState> emit,
  ) async {
    emit(CarListLoadingState());
    query.refetch();
  }

  FutureOr<void> _onError(
    CarListErrorOccurredEvent event,
    Emitter<CarListState> emit,
  ) async {
    emit(CarListErrorState(event.error));
  }

  FutureOr<void> _onData(
    CarListDataReceivedEvent event,
    Emitter<CarListState> emit,
  ) async {
    emit(CarListIdleState(event.data));
  }
}
