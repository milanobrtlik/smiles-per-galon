import 'package:formz/formz.dart';

enum FullNameError { empty }

class FullNameInput extends FormzInput<String?, FullNameError> {
  const FullNameInput.pure([super.value = '']) : super.pure();

  const FullNameInput.dirty([super.value = '']) : super.dirty();

  @override
  FullNameError? validator(String? value) {
    if (value == null || value.isEmpty) {
      return FullNameError.empty;
    }
    return null;
  }
}

extension FullNameErrorExtension on FullNameError {
  String get text {
    switch (this) {
      case FullNameError.empty:
        return 'Full name can\'t be empty.';
    }
  }
}
