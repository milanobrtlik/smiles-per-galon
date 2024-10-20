part of 'position_history_insert_bloc.dart';

class PositionHistoryInsertState with FormzMixin {
  final FormzSubmissionStatus submissionStatus;
  final PositionInsertCarInput carInput;
  final PositionInsertCoordinatesInput coordinatesInput;
  final PositionInsertPhotoInput photoInput;

  @override
  List<FormzInput> get inputs => [carInput, coordinatesInput, photoInput];

  PositionHistoryInsertState({
    this.submissionStatus = FormzSubmissionStatus.initial,
    this.carInput = const PositionInsertCarInput.pure(),
    this.coordinatesInput = const PositionInsertCoordinatesInput.pure(),
    this.photoInput = const PositionInsertPhotoInput.pure(),
  });

  PositionHistoryInsertState copyWith({
    FormzSubmissionStatus? submissionStatus,
    PositionInsertCarInput? carInput,
    PositionInsertCoordinatesInput? coordinatesInput,
    PositionInsertPhotoInput? photoInput,
  }) {
    return PositionHistoryInsertState(
      submissionStatus: submissionStatus ?? this.submissionStatus,
      carInput: carInput ?? this.carInput,
      coordinatesInput: coordinatesInput ?? this.coordinatesInput,
      photoInput: photoInput ?? this.photoInput,
    );
  }
}
