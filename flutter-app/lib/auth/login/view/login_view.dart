import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:whereisourcar/auth/formz/formz.dart';
import 'package:whereisourcar/auth/login/bloc/login_bloc.dart';
import 'package:whereisourcar/components/components.dart';

import '../../create_account/create_account.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  'Login',
                  style: Theme.of(context).textTheme.displayLarge,
                ),
              ),
              const SizedBox(height: 16),
              const Center(child: _LoginInput()),
              const SizedBox(height: 8),
              const Center(child: _PasswordInput()),
              const SizedBox(height: 8),
              const Center(child: _LoginButton()),
              const SizedBox(height: 8),
              TextButton(
                  onPressed: () => Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => const CreateAccountPage(),
                        ),
                      ),
                  child: const Text('Vytvořit účet')),
              const SizedBox(height: 8),
              const _GoogleSignInButton(),
            ],
          ),
        ),
      ),
    );
  }
}

class _LoginButton extends StatelessWidget {
  const _LoginButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return ElevatedButton(
          onPressed: state.status == FormzSubmissionStatus.inProgress
              ? null
              : () => context.read<LoginBloc>().add(LoginFormSubmitted()),
          child: state.status == FormzSubmissionStatus.inProgress
              ? const Padding(
                  padding: EdgeInsets.all(8),
                  child: CircularProgressIndicator(),
                )
              : const Text('Přihlásit'),
        );
      },
    );
  }
}

class _PasswordInput extends StatelessWidget {
  const _PasswordInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (prev, curr) => prev.passwordInput != curr.passwordInput,
      builder: (context, state) {
        return FormzTextField(
          label: 'Zadejte heslo',
          onChanged: (value) =>
              context.read<LoginBloc>().add(PasswordChanged(value)),
          errorText: state.passwordInput.isPure
              ? null
              : state.passwordInput.error?.text,
          obscureText: true,
        );
      },
    );
  }
}

class _LoginInput extends StatelessWidget {
  const _LoginInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (prev, curr) => prev.usernameInput != curr.usernameInput,
      builder: (context, state) {
        return FormzTextField(
          label: 'Zadejte přihlašovací jméno',
          onChanged: (value) =>
              context.read<LoginBloc>().add(UsernameChanged(value)),
          errorText: state.usernameInput.isPure
              ? null
              : state.usernameInput.error?.text,
        );
      },
    );
  }
}

class _GoogleSignInButton extends StatelessWidget {
  const _GoogleSignInButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.read<LoginBloc>().add(LoginGoogleSignInInvoked()),
      child: Image.asset(
        'assets/images/sign_in_with_google.png',
        width: 200,
      ),
    );
  }
}
