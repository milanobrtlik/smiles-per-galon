import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:graphql/client.dart';
import 'package:hive_flutter/adapters.dart';

import 'auth/auth.dart';
import 'config.dart';
import 'errors.dart';
import 'module_home/module_home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox('jwt');
  final googleSignIn = GoogleSignIn(
    clientId:
        '1029284555018-53epdosf81va6omdi9jtlumgs65bqpqh.apps.googleusercontent.com',
  );
  final httpLink = HttpLink(
    Config.apiUrl,
    parser: MyResponseParser(),
    serializer: MyRequestSerializer(),
  );
  final graphqlClient = GraphQLClient(
    link: AuthLink(
      getToken: JwtProvider().shortLivedToken,
    ).concat(httpLink),
    cache: GraphQLCache(),
    defaultPolicies: DefaultPolicies(
      query: Policies(fetch: FetchPolicy.networkOnly),
    ),
  );

  runApp(MultiRepositoryProvider(
    providers: [
      RepositoryProvider(create: (_) => googleSignIn),
      RepositoryProvider(create: (_) => graphqlClient),
    ],
    child: MaterialApp(
      title: 'Saunatonttu',
      theme: ThemeData(colorSchemeSeed: Colors.green, useMaterial3: true),
      home: const HomePage(),
    ),
  ));
}

class ContextProvider {
  static BuildContext? context;
}
