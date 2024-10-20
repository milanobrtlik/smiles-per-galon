import 'dart:async';

import 'package:graphql/client.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:whereisourcar/auth/auth.dart';
import 'package:whereisourcar/config.dart';

class JwtProvider {
  static String? _shortToken;

  static void clear() {
    Hive.box('jwt').clear();
    _shortToken = null;
  }

  FutureOr<String> shortLivedToken() async {
    if (_shortToken != null && JwtDecoder.isExpired(_shortToken!) == false) {
      return 'Bearer ${_shortToken!}';
    }
    final longToken = await Hive.box('jwt').get('token', defaultValue: '');
    try {
      if (JwtDecoder.isExpired(longToken)) {
        return 'Bearer '; // nah, just let it fail later
      }
    } on FormatException catch (_) {
      return 'Bearer ';
    }
    final client = GraphQLClient(
      link: AuthLink(getToken: () => 'Bearer $longToken').concat(
        HttpLink(Config.apiUrl),
      ),
      cache: GraphQLCache(),
      defaultPolicies: DefaultPolicies(
        query: Policies(fetch: FetchPolicy.networkOnly),
      ),
    );
    final response = await client.mutate$getShortLivedToken();
    if (response.hasException) return 'Bearer ';

    _shortToken = response.parsedData!.shortLivedToken.token!;

    return 'Bearer $_shortToken';
  }
}
