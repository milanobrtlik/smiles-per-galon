import 'package:formz/formz.dart';

enum PositionInsertCarInputError { empty }

class PositionInsertCarInput
    extends FormzInput<String, PositionInsertCarInputError> {
  const PositionInsertCarInput.pure([super.value = '']) : super.pure();

  const PositionInsertCarInput.dirty(super.value) : super.dirty();

  @override
  PositionInsertCarInputError? validator(String value) {
    if (value.isEmpty) return PositionInsertCarInputError.empty;

    return null;
  }
}
