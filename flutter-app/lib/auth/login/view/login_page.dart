import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:graphql/client.dart';
import 'package:whereisourcar/auth/login/bloc/login_bloc.dart';
import 'package:whereisourcar/auth/login/view/login_view.dart';
import 'package:whereisourcar/config.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(
        googleSignIn: context.read<GoogleSignIn>(),
        graphqlClient: GraphQLClient(
          link: HttpLink(
            Config.apiUrl,
          ),
          cache: GraphQLCache(),
          defaultPolicies: DefaultPolicies(
            query: Policies(fetch: FetchPolicy.networkOnly),
          ),
        ),
      ),
      child: BlocListener<LoginBloc, LoginState>(
        listener: (context, state) {
          if (state.status == FormzSubmissionStatus.success) {
            Navigator.of(context).pushReplacementNamed('/');
          }
        },
        child: const LoginView(),
      ),
    );
  }
}
