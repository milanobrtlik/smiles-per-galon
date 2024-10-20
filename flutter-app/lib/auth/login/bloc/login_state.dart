part of 'login_bloc.dart';

class LoginState {
  final FormzSubmissionStatus status;
  final UsernameInput usernameInput;
  final PasswordInput passwordInput;

  const LoginState({
    this.status = FormzSubmissionStatus.initial,
    this.usernameInput = const UsernameInput.pure(),
    this.passwordInput = const PasswordInput.pure(),
  });

  LoginState copyWith({
    FormzSubmissionStatus? status,
    UsernameInput? usernameInput,
    PasswordInput? passwordInput,
  }) {
    return LoginState(
      status: status ?? this.status,
      usernameInput: usernameInput ?? this.usernameInput,
      passwordInput: passwordInput ?? this.passwordInput,
    );
  }

  List<FormzInput> get inputs => [usernameInput, passwordInput];
}
