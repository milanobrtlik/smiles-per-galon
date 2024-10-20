import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:graphql/client.dart';
import 'package:whereisourcar/auth/create_account/bloc/create_account_bloc.dart';
import 'package:whereisourcar/auth/create_account/view/create_account_view.dart';
import 'package:whereisourcar/config.dart';

class CreateAccountPage extends StatelessWidget {
  const CreateAccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CreateAccountBloc(
        GraphQLClient(
          link: HttpLink(Config.apiUrl),
          cache: GraphQLCache(),
          defaultPolicies: DefaultPolicies(
            query: Policies(fetch: FetchPolicy.networkOnly),
          ),
        ),
      ),
      child: BlocListener<CreateAccountBloc, CreateAccountState>(
        listener: (context, state) {
          if (state.status == FormzSubmissionStatus.success) {
            Navigator.of(context).pushNamedAndRemoveUntil(
              '/',
              (route) => false,
            );
          }
        },
        child: const CreateAccountView(),
      ),
    );
  }
}
