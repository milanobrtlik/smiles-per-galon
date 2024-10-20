import 'package:flutter/material.dart';
import 'package:graphql/client.dart';
import 'package:whereisourcar/auth/login/view/login_page.dart';

import 'main.dart';

class MyResponseParser extends ResponseParser {
  @override
  GraphQLError parseError(Map<String, dynamic> error) {
    var noAuth = error.containsKey('extensions');
    noAuth = noAuth && error['extensions'].containsKey('code');
    noAuth = noAuth
        && (error['extensions']['code'] == 'AUTH_NOT_AUTHENTICATED'
        || error['extensions']['code'] == 'AUTH_NOT_AUTHORIZED');
    if (noAuth) {
      Navigator.of(ContextProvider.context!).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => const LoginPage()),
        (route) => false,
      );
    }
    return super.parseError(error);
  }
}

class MyRequestSerializer extends RequestSerializer {
  @override
  Map<String, dynamic> serializeRequest(Request request) {
    final serialized = super.serializeRequest(request);

    return serialized;
  }
}
