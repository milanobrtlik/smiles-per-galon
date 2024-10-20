import 'dart:async';
import 'dart:ffi';

import 'package:bloc/bloc.dart';
import 'package:graphql/client.dart';
import 'package:meta/meta.dart';
import 'package:whereisourcar/fragments.graphql.dart';
import 'package:whereisourcar/module_manage/graphql/manage.graphql.dart';
import 'package:whereisourcar/schema.graphql.dart';

part 'car_write_event.dart';

part 'car_write_state.dart';

class CarWriteBloc extends Bloc<CarWriteEvent, CarWriteState> {
  CarWriteBloc(this.client) : super(CarWriteInitialState()) {
    on<CarWriteOpenedEvent>(_onOpened);
    on<CarWriteLicensePlateChangedEvent>(_onLicensePlateChanged);
  }

  final GraphQLClient client;

  FutureOr<void> _onOpened(
    CarWriteOpenedEvent event,
    Emitter<CarWriteState> emit,
  ) async {
    emit(CarWriteInitialState());
    if (event.fragment$carList == null) {
      emit(CarWriteIdleState(null));
    } else {
      final result = await client.query$carDetail(
        Options$Query$carDetail(
          variables: Variables$Query$carDetail(
            id: event.fragment$carList!.id,
          ),
        ),
      );
      if (result.hasException) {
        emit(CarWriteErrorState(result.exception.toString()));
      } else {
        emit(CarWriteIdleState(result.parsedData?.carDetail));
      }
    }
  }

  FutureOr<void> _onLicensePlateChanged(
    CarWriteLicensePlateChangedEvent event,
    Emitter<CarWriteState> emit,
  ) async {
    if(state is CarWriteIdleState) {
      final result = await client.mutate$carUpdate(
        Options$Mutation$carUpdate(
          variables: Variables$Mutation$carUpdate(
            input: Input$CarUpdateInput(
              id: (state as CarWriteIdleState).car!.id,
              licencePlace: event.licensePlate,
            ),
          ),
        ),
      );
      if(result.hasException) {
        emit(CarWriteErrorState(result.exception.toString()));
      } else {
        emit(CarWriteIdleState(result.parsedData!.carUpdate.car));
      }
    }
  }
}
