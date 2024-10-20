part of 'create_account_bloc.dart';

@immutable
abstract class CreateAccountEvent {}

class CreateAccountUsernameChanged extends CreateAccountEvent {
  final String? username;

  CreateAccountUsernameChanged(this.username);
}

class CreateAccountPasswordChanged extends CreateAccountEvent {
  final String? password;

  CreateAccountPasswordChanged(this.password);
}

class CreateAccountFullNameChanged extends CreateAccountEvent {
  final String? fullName;

  CreateAccountFullNameChanged(this.fullName);
}

class CreateAccountSubmitted extends CreateAccountEvent {}
