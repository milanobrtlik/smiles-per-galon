import 'dart:typed_data';

import 'package:formz/formz.dart';

enum PositionInsertPhotoInputError { empty }

class PositionInsertPhotoInput
    extends FormzInput<Uint8List?, PositionInsertPhotoInputError> {
  const PositionInsertPhotoInput.pure([super.value]) : super.pure();

  const PositionInsertPhotoInput.dirty(super.value) : super.dirty();

  @override
  PositionInsertPhotoInputError? validator(Uint8List? value) {
    if(value == null || value.isEmpty) return PositionInsertPhotoInputError.empty;
    
    return null;
  }
}
