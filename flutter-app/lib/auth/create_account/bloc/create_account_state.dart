part of 'create_account_bloc.dart';

class CreateAccountState {
  final FormzSubmissionStatus status;
  final UsernameInput username;
  final PasswordInput password;
  final FullNameInput fullName;

  const CreateAccountState({
    this.status = FormzSubmissionStatus.initial,
    this.username = const UsernameInput.pure(),
    this.password = const PasswordInput.pure(),
    this.fullName = const FullNameInput.pure(),
  });

  CreateAccountState copyWith({
    FormzSubmissionStatus? status,
    UsernameInput? username,
    PasswordInput? password,
    FullNameInput? fullName,
  }) {
    return CreateAccountState(
      status: status ?? this.status,
      username: username ?? this.username,
      password: password ?? this.password,
      fullName: fullName ?? this.fullName,
    );
  }

  List<FormzInput> get inputs => [username, password, fullName];
}
