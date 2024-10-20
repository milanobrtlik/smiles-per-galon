import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:formz/formz.dart';
import 'package:graphql/client.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:whereisourcar/auth/formz/formz.dart';
import 'package:whereisourcar/auth/formz/full_name.dart';
import 'package:whereisourcar/auth/graphql/auth.graphql.dart';
import 'package:whereisourcar/schema.graphql.dart';

part 'create_account_event.dart';
part 'create_account_state.dart';

class CreateAccountBloc extends Bloc<CreateAccountEvent, CreateAccountState> {
  final GraphQLClient _client;

  CreateAccountBloc(this._client) : super(const CreateAccountState()) {
    on<CreateAccountSubmitted>(_onSubmitted);
    on<CreateAccountUsernameChanged>(_onUsernameChanged);
    on<CreateAccountPasswordChanged>(_onPasswordChanged);
    on<CreateAccountFullNameChanged>(_onFullNameChanged);
  }

  FutureOr<void> _onSubmitted(
    CreateAccountSubmitted event,
    Emitter<CreateAccountState> emit,
  ) async {
    if (Formz.validate(state.inputs)) {
      return;
    }
    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));

    final result = await _client.mutate$emailSignUp(
      Options$Mutation$emailSignUp(
        variables: Variables$Mutation$emailSignUp(
          input: Input$EmailSignUpInputTypeInput(
            email: state.username.value!,
            password: state.password.value!,
            name: state.fullName.value!,
          ),
        ),
      ),
    );

    if (result.hasException) return;

    final login = await _client.mutate$emailLogin(
      Options$Mutation$emailLogin(
        variables: Variables$Mutation$emailLogin(
          input: Input$EmailSignInInputTypeInput(
            email: state.username.value!,
            password: state.password.value!,
          ),
        ),
      ),
    );

    if (login.hasException) return;

    await Hive.box('jwt').put('token', login.parsedData!.emailSignIn.token);

    emit(state.copyWith(status: FormzSubmissionStatus.success));
  }

  FutureOr<void> _onUsernameChanged(
    CreateAccountUsernameChanged event,
    Emitter<CreateAccountState> emit,
  ) async {
    emit(state.copyWith(username: UsernameInput.dirty(event.username)));
  }

  FutureOr<void> _onPasswordChanged(
    CreateAccountPasswordChanged event,
    Emitter<CreateAccountState> emit,
  ) async {
    emit(state.copyWith(password: PasswordInput.dirty(event.password)));
  }

  FutureOr<void> _onFullNameChanged(
    CreateAccountFullNameChanged event,
    Emitter<CreateAccountState> emit,
  ) async {
    emit(state.copyWith(fullName: FullNameInput.dirty(event.fullName)));
  }
}
