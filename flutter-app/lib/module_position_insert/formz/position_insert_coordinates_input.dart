import 'package:formz/formz.dart';
import 'package:latlng/latlng.dart';

enum PositionInsertCoordinatesInputError { empty }

class PositionInsertCoordinatesInput
    extends FormzInput<LatLng?, PositionInsertCoordinatesInputError> {
  const PositionInsertCoordinatesInput.pure([super.value]) : super.dirty();

  const PositionInsertCoordinatesInput.dirty(super.value) : super.dirty();

  @override
  PositionInsertCoordinatesInputError? validator(LatLng? value) {
    if (value == null) return PositionInsertCoordinatesInputError.empty;

    return null;
  }
}
