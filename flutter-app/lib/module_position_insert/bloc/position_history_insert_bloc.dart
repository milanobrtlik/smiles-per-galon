import 'dart:async';
import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:graphql/client.dart';
import 'package:latlng/latlng.dart';
import 'package:meta/meta.dart';
import 'package:whereisourcar/module_position_insert/formz/formz.dart';
import 'package:whereisourcar/module_position_insert/graphql/position_insert.graphql.dart';
import 'package:whereisourcar/schema.graphql.dart';

part 'position_history_insert_event.dart';

part 'position_history_insert_state.dart';

class PositionHistoryInsertBloc
    extends Bloc<PositionHistoryInsertEvent, PositionHistoryInsertState> {
  PositionHistoryInsertBloc(this.client) : super(PositionHistoryInsertState()) {
    on<HistoryInsertCarChangedEvent>(_onCarChanged);
    on<HistoryInsertCoordinatesChangedEvent>(_onCoordinatesChanged);
    on<HistoryInsertPhotoChangedEvent>(_onPhotoChanged);
    on<HistoryInsertSubmittedEvent>(_onSubmitted);
  }

  final GraphQLClient client;

  FutureOr<void> _onSubmitted(
    HistoryInsertSubmittedEvent event,
    Emitter<PositionHistoryInsertState> emit,
  ) async {
    if (state.isNotValid) {
      emit(state);
      return;
    }
    final result = await client.mutate$positionHistoryInsert(
      Options$Mutation$positionHistoryInsert(
        variables: Variables$Mutation$positionHistoryInsert(
          input: Input$PositionHistoryInput(
            carId: state.carInput.value,
            lat: state.coordinatesInput.value!.latitude,
            lon: state.coordinatesInput.value!.longitude,
            photos: [],
          ),
        ),
      ),
    );
    if(result.hasException || result.parsedData!.positionHistoryInsert.errors.isNotEmpty) {
      emit(state.copyWith(
        submissionStatus: FormzSubmissionStatus.failure,
      ));
    } else if(result.parsedData!.positionHistoryInsert.errors.isNotEmpty) {
      emit(state.copyWith(
        submissionStatus: FormzSubmissionStatus.success,
      ));
    }
  }

  FutureOr<void> _onPhotoChanged(
    HistoryInsertPhotoChangedEvent event,
    Emitter<PositionHistoryInsertState> emit,
  ) async {
    emit(state.copyWith(
      photoInput: PositionInsertPhotoInput.dirty(event.data),
    ));
  }

  FutureOr<void> _onCoordinatesChanged(
    HistoryInsertCoordinatesChangedEvent event,
    Emitter<PositionHistoryInsertState> emit,
  ) async {
    emit(state.copyWith(
      coordinatesInput: PositionInsertCoordinatesInput.dirty(event.coordinates),
    ));
  }

  FutureOr<void> _onCarChanged(
    HistoryInsertCarChangedEvent event,
    Emitter<PositionHistoryInsertState> emit,
  ) async {
    emit(state.copyWith(
      carInput: PositionInsertCarInput.dirty(event.car),
    ));
  }
}
