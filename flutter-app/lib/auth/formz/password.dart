import 'package:formz/formz.dart';

enum PasswordInputError { empty }

class PasswordInput extends FormzInput<String?, PasswordInputError> {
  const PasswordInput.pure([super.value]) : super.pure();

  const PasswordInput.dirty([super.value = '']) : super.dirty();

  @override
  PasswordInputError? validator(String? value) {
    if (value == null || value.isEmpty) {
      return PasswordInputError.empty;
    }
    return null;
  }
}

extension PasswordInputErrorExtension on PasswordInputError {
  String get text {
    switch (this) {
      case PasswordInputError.empty:
        return 'Password can\'t be empty.';
    }
  }
}
