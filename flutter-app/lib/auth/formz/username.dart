import 'package:formz/formz.dart';

enum UsernameInputError { empty }

class UsernameInput extends FormzInput<String?, UsernameInputError> {
  const UsernameInput.pure([super.value]) : super.pure();

  UsernameInput.dirty([super.value]) : super.dirty();

  @override
  UsernameInputError? validator(String? value) {
    if (value == null || value.isEmpty) {
      return UsernameInputError.empty;
    }

    return null;
  }
}

extension UsernameInputErrorExtension on UsernameInputError {
  String get text {
    switch (this) {
      case UsernameInputError.empty:
        return 'Username empty';
    }
  }
}
