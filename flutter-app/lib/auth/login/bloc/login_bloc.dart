import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:graphql/client.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:whereisourcar/auth/formz/formz.dart';
import 'package:whereisourcar/auth/graphql/auth.graphql.dart';
import 'package:whereisourcar/schema.graphql.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final GraphQLClient graphqlClient;
  final GoogleSignIn googleSignIn;

  LoginBloc({
    required this.graphqlClient,
    required this.googleSignIn,
  }) : super(const LoginState()) {
    on<UsernameChanged>(_onUsernameChanged);
    on<PasswordChanged>(_onPasswordChanged);
    on<LoginFormSubmitted>(_onLoginFormSubmitted);
    on<LoginGoogleSignInInvoked>(_onGoogleSignInInvoked);
  }

  FutureOr<void> _onLoginFormSubmitted(
    LoginFormSubmitted event,
    Emitter<LoginState> emit,
  ) async {
    if (Formz.validate(state.inputs) == false) {
      return;
    }
    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
    final result = await graphqlClient.mutate$emailLogin(
      Options$Mutation$emailLogin(
        variables: Variables$Mutation$emailLogin(
          input: Input$EmailSignInInputTypeInput(
            email: state.usernameInput.value!,
            password: state.passwordInput.value!,
          ),
        ),
      ),
    );

    if (result.hasException) return;

    final token = result.parsedData!.emailSignIn.token!;
    Hive.box('jwt').put('token', token);

    emit(state.copyWith(status: FormzSubmissionStatus.success));
  }

  FutureOr<void> _onUsernameChanged(
    UsernameChanged event,
    Emitter<LoginState> emit,
  ) async {
    emit(state.copyWith(usernameInput: UsernameInput.dirty(event.username)));
  }

  FutureOr<void> _onPasswordChanged(
    PasswordChanged event,
    Emitter<LoginState> emit,
  ) async {
    emit(state.copyWith(passwordInput: PasswordInput.dirty(event.password)));
  }

  FutureOr<void> _onGoogleSignInInvoked(
    LoginGoogleSignInInvoked event,
    Emitter<LoginState> emit,
  ) async {
    final account = await googleSignIn.signIn();
    final auth = await account?.authentication;
    final idToken = auth?.idToken;
    if (idToken == null) {
      emit(const LoginState(
        status: FormzSubmissionStatus.failure,
      ));
      return;
    }
    final result = await graphqlClient.mutate$signInGoogle(
      Options$Mutation$signInGoogle(
        variables: Variables$Mutation$signInGoogle(
          idToken: idToken,
        ),
      ),
    );

    final token = result.parsedData!.googleSignIn;
    Hive.box('jwt').put('token', token);

    emit(const LoginState(
      status: FormzSubmissionStatus.success,
    ));
  }
}
