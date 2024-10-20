import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:whereisourcar/auth/create_account/bloc/create_account_bloc.dart';
import 'package:whereisourcar/auth/formz/formz.dart';
import 'package:whereisourcar/auth/formz/full_name.dart';
import 'package:whereisourcar/auth/login/view/login_page.dart';
import 'package:whereisourcar/components/components.dart';

class CreateAccountView extends StatelessWidget {
  const CreateAccountView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  'New account',
                  style: Theme.of(context).textTheme.displayLarge,
                ),
              ),
              const SizedBox(height: 16),
              const Center(child: _FullNameInput()),
              const SizedBox(height: 8),
              const Center(child: _LoginInput()),
              const SizedBox(height: 8),
              const Center(child: _PasswordInput()),
              const SizedBox(height: 8),
              const Center(child: _SubmitButton()),
              const SizedBox(height: 8),
              const _LoginButton(),
            ],
          ),
        ),
      ),
    );
  }
}

class _FullNameInput extends StatelessWidget {
  const _FullNameInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateAccountBloc, CreateAccountState>(
      buildWhen: (p, c) => p.fullName != c.fullName,
      builder: (context, state) {
        return FormzTextField(
          label: 'Zadejte své celé jméno',
          onChanged: (v) => context
              .read<CreateAccountBloc>()
              .add(CreateAccountFullNameChanged(v)),
          errorText: state.fullName.isPure ? null : state.fullName.error?.text,
        );
      },
    );
  }
}

class _LoginInput extends StatelessWidget {
  const _LoginInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateAccountBloc, CreateAccountState>(
      buildWhen: (p, c) => p.username != c.username,
      builder: (context, state) {
        return FormzTextField(
          label: 'Zadejte přihlašovací jméno',
          onChanged: (v) => context
              .read<CreateAccountBloc>()
              .add(CreateAccountUsernameChanged(v)),
          errorText: state.username.isPure ? null : state.username.error?.text,
        );
      },
    );
  }
}

class _PasswordInput extends StatelessWidget {
  const _PasswordInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateAccountBloc, CreateAccountState>(
      buildWhen: (p, c) => p.password != c.password,
      builder: (context, state) {
        return FormzTextField(
          label: 'Zadejte heslo',
          onChanged: (v) => context
              .read<CreateAccountBloc>()
              .add(CreateAccountPasswordChanged(v)),
          obscureText: true,
          errorText: state.password.isPure ? null : state.password.error?.text,
        );
      },
    );
  }
}

class _SubmitButton extends StatelessWidget {
  const _SubmitButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateAccountBloc, CreateAccountState>(
      builder: (context, state) {
        return ElevatedButton(
          onPressed: state.status == FormzSubmissionStatus.inProgress
              ? null
              : () => context
                  .read<CreateAccountBloc>()
                  .add(CreateAccountSubmitted()),
          child: state.status == FormzSubmissionStatus.inProgress
              ? const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CircularProgressIndicator(),
                )
              : const Text('Vytvořit účet'),
        );
      },
    );
  }
}

class _LoginButton extends StatelessWidget {
  const _LoginButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_) => const LoginPage(),
        ),
      ),
      child: const Text('Přihlásit'),
    );
  }
}
