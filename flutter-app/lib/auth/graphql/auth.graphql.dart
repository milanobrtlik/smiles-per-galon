import '../../fragments.graphql.dart';
import '../../schema.graphql.dart';
import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Mutation$getShortLivedToken {
  Mutation$getShortLivedToken({
    required this.shortLivedToken,
    this.$__typename = 'Mutation',
  });

  factory Mutation$getShortLivedToken.fromJson(Map<String, dynamic> json) {
    final l$shortLivedToken = json['shortLivedToken'];
    final l$$__typename = json['__typename'];
    return Mutation$getShortLivedToken(
      shortLivedToken: Mutation$getShortLivedToken$shortLivedToken.fromJson(
          (l$shortLivedToken as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$getShortLivedToken$shortLivedToken shortLivedToken;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$shortLivedToken = shortLivedToken;
    _resultData['shortLivedToken'] = l$shortLivedToken.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$shortLivedToken = shortLivedToken;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$shortLivedToken,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$getShortLivedToken) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$shortLivedToken = shortLivedToken;
    final lOther$shortLivedToken = other.shortLivedToken;
    if (l$shortLivedToken != lOther$shortLivedToken) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$getShortLivedToken
    on Mutation$getShortLivedToken {
  CopyWith$Mutation$getShortLivedToken<Mutation$getShortLivedToken>
      get copyWith => CopyWith$Mutation$getShortLivedToken(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$getShortLivedToken<TRes> {
  factory CopyWith$Mutation$getShortLivedToken(
    Mutation$getShortLivedToken instance,
    TRes Function(Mutation$getShortLivedToken) then,
  ) = _CopyWithImpl$Mutation$getShortLivedToken;

  factory CopyWith$Mutation$getShortLivedToken.stub(TRes res) =
      _CopyWithStubImpl$Mutation$getShortLivedToken;

  TRes call({
    Mutation$getShortLivedToken$shortLivedToken? shortLivedToken,
    String? $__typename,
  });
  CopyWith$Mutation$getShortLivedToken$shortLivedToken<TRes>
      get shortLivedToken;
}

class _CopyWithImpl$Mutation$getShortLivedToken<TRes>
    implements CopyWith$Mutation$getShortLivedToken<TRes> {
  _CopyWithImpl$Mutation$getShortLivedToken(
    this._instance,
    this._then,
  );

  final Mutation$getShortLivedToken _instance;

  final TRes Function(Mutation$getShortLivedToken) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? shortLivedToken = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$getShortLivedToken(
        shortLivedToken: shortLivedToken == _undefined ||
                shortLivedToken == null
            ? _instance.shortLivedToken
            : (shortLivedToken as Mutation$getShortLivedToken$shortLivedToken),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$getShortLivedToken$shortLivedToken<TRes>
      get shortLivedToken {
    final local$shortLivedToken = _instance.shortLivedToken;
    return CopyWith$Mutation$getShortLivedToken$shortLivedToken(
        local$shortLivedToken, (e) => call(shortLivedToken: e));
  }
}

class _CopyWithStubImpl$Mutation$getShortLivedToken<TRes>
    implements CopyWith$Mutation$getShortLivedToken<TRes> {
  _CopyWithStubImpl$Mutation$getShortLivedToken(this._res);

  TRes _res;

  call({
    Mutation$getShortLivedToken$shortLivedToken? shortLivedToken,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$getShortLivedToken$shortLivedToken<TRes>
      get shortLivedToken =>
          CopyWith$Mutation$getShortLivedToken$shortLivedToken.stub(_res);
}

const documentNodeMutationgetShortLivedToken = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'getShortLivedToken'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'shortLivedToken'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'token'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'errors'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'ErrorDetail'),
                directives: [],
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionErrorDetail,
]);
Mutation$getShortLivedToken _parserFn$Mutation$getShortLivedToken(
        Map<String, dynamic> data) =>
    Mutation$getShortLivedToken.fromJson(data);
typedef OnMutationCompleted$Mutation$getShortLivedToken = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$getShortLivedToken?,
);

class Options$Mutation$getShortLivedToken
    extends graphql.MutationOptions<Mutation$getShortLivedToken> {
  Options$Mutation$getShortLivedToken({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$getShortLivedToken? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$getShortLivedToken? onCompleted,
    graphql.OnMutationUpdate<Mutation$getShortLivedToken>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$getShortLivedToken(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationgetShortLivedToken,
          parserFn: _parserFn$Mutation$getShortLivedToken,
        );

  final OnMutationCompleted$Mutation$getShortLivedToken? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$getShortLivedToken
    extends graphql.WatchQueryOptions<Mutation$getShortLivedToken> {
  WatchOptions$Mutation$getShortLivedToken({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$getShortLivedToken? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationgetShortLivedToken,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$getShortLivedToken,
        );
}

extension ClientExtension$Mutation$getShortLivedToken on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$getShortLivedToken>>
      mutate$getShortLivedToken(
              [Options$Mutation$getShortLivedToken? options]) async =>
          await this.mutate(options ?? Options$Mutation$getShortLivedToken());
  graphql.ObservableQuery<
      Mutation$getShortLivedToken> watchMutation$getShortLivedToken(
          [WatchOptions$Mutation$getShortLivedToken? options]) =>
      this.watchMutation(options ?? WatchOptions$Mutation$getShortLivedToken());
}

class Mutation$getShortLivedToken$shortLivedToken {
  Mutation$getShortLivedToken$shortLivedToken({
    this.token,
    required this.errors,
    this.$__typename = 'AuthTokenPayload',
  });

  factory Mutation$getShortLivedToken$shortLivedToken.fromJson(
      Map<String, dynamic> json) {
    final l$token = json['token'];
    final l$errors = json['errors'];
    final l$$__typename = json['__typename'];
    return Mutation$getShortLivedToken$shortLivedToken(
      token: (l$token as String?),
      errors: (l$errors as List<dynamic>)
          .map(
              (e) => Fragment$ErrorDetail.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String? token;

  final List<Fragment$ErrorDetail> errors;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$token = token;
    _resultData['token'] = l$token;
    final l$errors = errors;
    _resultData['errors'] = l$errors.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$token = token;
    final l$errors = errors;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$token,
      Object.hashAll(l$errors.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$getShortLivedToken$shortLivedToken) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$token = token;
    final lOther$token = other.token;
    if (l$token != lOther$token) {
      return false;
    }
    final l$errors = errors;
    final lOther$errors = other.errors;
    if (l$errors.length != lOther$errors.length) {
      return false;
    }
    for (int i = 0; i < l$errors.length; i++) {
      final l$errors$entry = l$errors[i];
      final lOther$errors$entry = lOther$errors[i];
      if (l$errors$entry != lOther$errors$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$getShortLivedToken$shortLivedToken
    on Mutation$getShortLivedToken$shortLivedToken {
  CopyWith$Mutation$getShortLivedToken$shortLivedToken<
          Mutation$getShortLivedToken$shortLivedToken>
      get copyWith => CopyWith$Mutation$getShortLivedToken$shortLivedToken(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$getShortLivedToken$shortLivedToken<TRes> {
  factory CopyWith$Mutation$getShortLivedToken$shortLivedToken(
    Mutation$getShortLivedToken$shortLivedToken instance,
    TRes Function(Mutation$getShortLivedToken$shortLivedToken) then,
  ) = _CopyWithImpl$Mutation$getShortLivedToken$shortLivedToken;

  factory CopyWith$Mutation$getShortLivedToken$shortLivedToken.stub(TRes res) =
      _CopyWithStubImpl$Mutation$getShortLivedToken$shortLivedToken;

  TRes call({
    String? token,
    List<Fragment$ErrorDetail>? errors,
    String? $__typename,
  });
  TRes errors(
      Iterable<Fragment$ErrorDetail> Function(
              Iterable<CopyWith$Fragment$ErrorDetail<Fragment$ErrorDetail>>)
          _fn);
}

class _CopyWithImpl$Mutation$getShortLivedToken$shortLivedToken<TRes>
    implements CopyWith$Mutation$getShortLivedToken$shortLivedToken<TRes> {
  _CopyWithImpl$Mutation$getShortLivedToken$shortLivedToken(
    this._instance,
    this._then,
  );

  final Mutation$getShortLivedToken$shortLivedToken _instance;

  final TRes Function(Mutation$getShortLivedToken$shortLivedToken) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? token = _undefined,
    Object? errors = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$getShortLivedToken$shortLivedToken(
        token: token == _undefined ? _instance.token : (token as String?),
        errors: errors == _undefined || errors == null
            ? _instance.errors
            : (errors as List<Fragment$ErrorDetail>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes errors(
          Iterable<Fragment$ErrorDetail> Function(
                  Iterable<CopyWith$Fragment$ErrorDetail<Fragment$ErrorDetail>>)
              _fn) =>
      call(
          errors: _fn(_instance.errors.map((e) => CopyWith$Fragment$ErrorDetail(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Mutation$getShortLivedToken$shortLivedToken<TRes>
    implements CopyWith$Mutation$getShortLivedToken$shortLivedToken<TRes> {
  _CopyWithStubImpl$Mutation$getShortLivedToken$shortLivedToken(this._res);

  TRes _res;

  call({
    String? token,
    List<Fragment$ErrorDetail>? errors,
    String? $__typename,
  }) =>
      _res;
  errors(_fn) => _res;
}

class Variables$Mutation$emailLogin {
  factory Variables$Mutation$emailLogin(
          {required Input$EmailSignInInputTypeInput input}) =>
      Variables$Mutation$emailLogin._({
        r'input': input,
      });

  Variables$Mutation$emailLogin._(this._$data);

  factory Variables$Mutation$emailLogin.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$EmailSignInInputTypeInput.fromJson(
        (l$input as Map<String, dynamic>));
    return Variables$Mutation$emailLogin._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$EmailSignInInputTypeInput get input =>
      (_$data['input'] as Input$EmailSignInInputTypeInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$emailLogin<Variables$Mutation$emailLogin>
      get copyWith => CopyWith$Variables$Mutation$emailLogin(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$emailLogin) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    return Object.hashAll([l$input]);
  }
}

abstract class CopyWith$Variables$Mutation$emailLogin<TRes> {
  factory CopyWith$Variables$Mutation$emailLogin(
    Variables$Mutation$emailLogin instance,
    TRes Function(Variables$Mutation$emailLogin) then,
  ) = _CopyWithImpl$Variables$Mutation$emailLogin;

  factory CopyWith$Variables$Mutation$emailLogin.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$emailLogin;

  TRes call({Input$EmailSignInInputTypeInput? input});
}

class _CopyWithImpl$Variables$Mutation$emailLogin<TRes>
    implements CopyWith$Variables$Mutation$emailLogin<TRes> {
  _CopyWithImpl$Variables$Mutation$emailLogin(
    this._instance,
    this._then,
  );

  final Variables$Mutation$emailLogin _instance;

  final TRes Function(Variables$Mutation$emailLogin) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$emailLogin._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$EmailSignInInputTypeInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$emailLogin<TRes>
    implements CopyWith$Variables$Mutation$emailLogin<TRes> {
  _CopyWithStubImpl$Variables$Mutation$emailLogin(this._res);

  TRes _res;

  call({Input$EmailSignInInputTypeInput? input}) => _res;
}

class Mutation$emailLogin {
  Mutation$emailLogin({
    required this.emailSignIn,
    this.$__typename = 'Mutation',
  });

  factory Mutation$emailLogin.fromJson(Map<String, dynamic> json) {
    final l$emailSignIn = json['emailSignIn'];
    final l$$__typename = json['__typename'];
    return Mutation$emailLogin(
      emailSignIn: Mutation$emailLogin$emailSignIn.fromJson(
          (l$emailSignIn as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$emailLogin$emailSignIn emailSignIn;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$emailSignIn = emailSignIn;
    _resultData['emailSignIn'] = l$emailSignIn.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$emailSignIn = emailSignIn;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$emailSignIn,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$emailLogin) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$emailSignIn = emailSignIn;
    final lOther$emailSignIn = other.emailSignIn;
    if (l$emailSignIn != lOther$emailSignIn) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$emailLogin on Mutation$emailLogin {
  CopyWith$Mutation$emailLogin<Mutation$emailLogin> get copyWith =>
      CopyWith$Mutation$emailLogin(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$emailLogin<TRes> {
  factory CopyWith$Mutation$emailLogin(
    Mutation$emailLogin instance,
    TRes Function(Mutation$emailLogin) then,
  ) = _CopyWithImpl$Mutation$emailLogin;

  factory CopyWith$Mutation$emailLogin.stub(TRes res) =
      _CopyWithStubImpl$Mutation$emailLogin;

  TRes call({
    Mutation$emailLogin$emailSignIn? emailSignIn,
    String? $__typename,
  });
  CopyWith$Mutation$emailLogin$emailSignIn<TRes> get emailSignIn;
}

class _CopyWithImpl$Mutation$emailLogin<TRes>
    implements CopyWith$Mutation$emailLogin<TRes> {
  _CopyWithImpl$Mutation$emailLogin(
    this._instance,
    this._then,
  );

  final Mutation$emailLogin _instance;

  final TRes Function(Mutation$emailLogin) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? emailSignIn = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$emailLogin(
        emailSignIn: emailSignIn == _undefined || emailSignIn == null
            ? _instance.emailSignIn
            : (emailSignIn as Mutation$emailLogin$emailSignIn),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$emailLogin$emailSignIn<TRes> get emailSignIn {
    final local$emailSignIn = _instance.emailSignIn;
    return CopyWith$Mutation$emailLogin$emailSignIn(
        local$emailSignIn, (e) => call(emailSignIn: e));
  }
}

class _CopyWithStubImpl$Mutation$emailLogin<TRes>
    implements CopyWith$Mutation$emailLogin<TRes> {
  _CopyWithStubImpl$Mutation$emailLogin(this._res);

  TRes _res;

  call({
    Mutation$emailLogin$emailSignIn? emailSignIn,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$emailLogin$emailSignIn<TRes> get emailSignIn =>
      CopyWith$Mutation$emailLogin$emailSignIn.stub(_res);
}

const documentNodeMutationemailLogin = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'emailLogin'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'EmailSignInInputTypeInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'emailSignIn'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'token'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'errors'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'ErrorDetail'),
                directives: [],
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionErrorDetail,
]);
Mutation$emailLogin _parserFn$Mutation$emailLogin(Map<String, dynamic> data) =>
    Mutation$emailLogin.fromJson(data);
typedef OnMutationCompleted$Mutation$emailLogin = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$emailLogin?,
);

class Options$Mutation$emailLogin
    extends graphql.MutationOptions<Mutation$emailLogin> {
  Options$Mutation$emailLogin({
    String? operationName,
    required Variables$Mutation$emailLogin variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$emailLogin? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$emailLogin? onCompleted,
    graphql.OnMutationUpdate<Mutation$emailLogin>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$emailLogin(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationemailLogin,
          parserFn: _parserFn$Mutation$emailLogin,
        );

  final OnMutationCompleted$Mutation$emailLogin? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$emailLogin
    extends graphql.WatchQueryOptions<Mutation$emailLogin> {
  WatchOptions$Mutation$emailLogin({
    String? operationName,
    required Variables$Mutation$emailLogin variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$emailLogin? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationemailLogin,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$emailLogin,
        );
}

extension ClientExtension$Mutation$emailLogin on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$emailLogin>> mutate$emailLogin(
          Options$Mutation$emailLogin options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$emailLogin> watchMutation$emailLogin(
          WatchOptions$Mutation$emailLogin options) =>
      this.watchMutation(options);
}

class Mutation$emailLogin$emailSignIn {
  Mutation$emailLogin$emailSignIn({
    this.token,
    required this.errors,
    this.$__typename = 'AuthTokenPayload',
  });

  factory Mutation$emailLogin$emailSignIn.fromJson(Map<String, dynamic> json) {
    final l$token = json['token'];
    final l$errors = json['errors'];
    final l$$__typename = json['__typename'];
    return Mutation$emailLogin$emailSignIn(
      token: (l$token as String?),
      errors: (l$errors as List<dynamic>)
          .map(
              (e) => Fragment$ErrorDetail.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String? token;

  final List<Fragment$ErrorDetail> errors;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$token = token;
    _resultData['token'] = l$token;
    final l$errors = errors;
    _resultData['errors'] = l$errors.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$token = token;
    final l$errors = errors;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$token,
      Object.hashAll(l$errors.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$emailLogin$emailSignIn) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$token = token;
    final lOther$token = other.token;
    if (l$token != lOther$token) {
      return false;
    }
    final l$errors = errors;
    final lOther$errors = other.errors;
    if (l$errors.length != lOther$errors.length) {
      return false;
    }
    for (int i = 0; i < l$errors.length; i++) {
      final l$errors$entry = l$errors[i];
      final lOther$errors$entry = lOther$errors[i];
      if (l$errors$entry != lOther$errors$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$emailLogin$emailSignIn
    on Mutation$emailLogin$emailSignIn {
  CopyWith$Mutation$emailLogin$emailSignIn<Mutation$emailLogin$emailSignIn>
      get copyWith => CopyWith$Mutation$emailLogin$emailSignIn(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$emailLogin$emailSignIn<TRes> {
  factory CopyWith$Mutation$emailLogin$emailSignIn(
    Mutation$emailLogin$emailSignIn instance,
    TRes Function(Mutation$emailLogin$emailSignIn) then,
  ) = _CopyWithImpl$Mutation$emailLogin$emailSignIn;

  factory CopyWith$Mutation$emailLogin$emailSignIn.stub(TRes res) =
      _CopyWithStubImpl$Mutation$emailLogin$emailSignIn;

  TRes call({
    String? token,
    List<Fragment$ErrorDetail>? errors,
    String? $__typename,
  });
  TRes errors(
      Iterable<Fragment$ErrorDetail> Function(
              Iterable<CopyWith$Fragment$ErrorDetail<Fragment$ErrorDetail>>)
          _fn);
}

class _CopyWithImpl$Mutation$emailLogin$emailSignIn<TRes>
    implements CopyWith$Mutation$emailLogin$emailSignIn<TRes> {
  _CopyWithImpl$Mutation$emailLogin$emailSignIn(
    this._instance,
    this._then,
  );

  final Mutation$emailLogin$emailSignIn _instance;

  final TRes Function(Mutation$emailLogin$emailSignIn) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? token = _undefined,
    Object? errors = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$emailLogin$emailSignIn(
        token: token == _undefined ? _instance.token : (token as String?),
        errors: errors == _undefined || errors == null
            ? _instance.errors
            : (errors as List<Fragment$ErrorDetail>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes errors(
          Iterable<Fragment$ErrorDetail> Function(
                  Iterable<CopyWith$Fragment$ErrorDetail<Fragment$ErrorDetail>>)
              _fn) =>
      call(
          errors: _fn(_instance.errors.map((e) => CopyWith$Fragment$ErrorDetail(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Mutation$emailLogin$emailSignIn<TRes>
    implements CopyWith$Mutation$emailLogin$emailSignIn<TRes> {
  _CopyWithStubImpl$Mutation$emailLogin$emailSignIn(this._res);

  TRes _res;

  call({
    String? token,
    List<Fragment$ErrorDetail>? errors,
    String? $__typename,
  }) =>
      _res;
  errors(_fn) => _res;
}

class Variables$Mutation$emailSignUp {
  factory Variables$Mutation$emailSignUp(
          {required Input$EmailSignUpInputTypeInput input}) =>
      Variables$Mutation$emailSignUp._({
        r'input': input,
      });

  Variables$Mutation$emailSignUp._(this._$data);

  factory Variables$Mutation$emailSignUp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$EmailSignUpInputTypeInput.fromJson(
        (l$input as Map<String, dynamic>));
    return Variables$Mutation$emailSignUp._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$EmailSignUpInputTypeInput get input =>
      (_$data['input'] as Input$EmailSignUpInputTypeInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$emailSignUp<Variables$Mutation$emailSignUp>
      get copyWith => CopyWith$Variables$Mutation$emailSignUp(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$emailSignUp) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    return Object.hashAll([l$input]);
  }
}

abstract class CopyWith$Variables$Mutation$emailSignUp<TRes> {
  factory CopyWith$Variables$Mutation$emailSignUp(
    Variables$Mutation$emailSignUp instance,
    TRes Function(Variables$Mutation$emailSignUp) then,
  ) = _CopyWithImpl$Variables$Mutation$emailSignUp;

  factory CopyWith$Variables$Mutation$emailSignUp.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$emailSignUp;

  TRes call({Input$EmailSignUpInputTypeInput? input});
}

class _CopyWithImpl$Variables$Mutation$emailSignUp<TRes>
    implements CopyWith$Variables$Mutation$emailSignUp<TRes> {
  _CopyWithImpl$Variables$Mutation$emailSignUp(
    this._instance,
    this._then,
  );

  final Variables$Mutation$emailSignUp _instance;

  final TRes Function(Variables$Mutation$emailSignUp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$emailSignUp._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$EmailSignUpInputTypeInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$emailSignUp<TRes>
    implements CopyWith$Variables$Mutation$emailSignUp<TRes> {
  _CopyWithStubImpl$Variables$Mutation$emailSignUp(this._res);

  TRes _res;

  call({Input$EmailSignUpInputTypeInput? input}) => _res;
}

class Mutation$emailSignUp {
  Mutation$emailSignUp({
    required this.emailSignUp,
    this.$__typename = 'Mutation',
  });

  factory Mutation$emailSignUp.fromJson(Map<String, dynamic> json) {
    final l$emailSignUp = json['emailSignUp'];
    final l$$__typename = json['__typename'];
    return Mutation$emailSignUp(
      emailSignUp: (l$emailSignUp as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool emailSignUp;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$emailSignUp = emailSignUp;
    _resultData['emailSignUp'] = l$emailSignUp;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$emailSignUp = emailSignUp;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$emailSignUp,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$emailSignUp) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$emailSignUp = emailSignUp;
    final lOther$emailSignUp = other.emailSignUp;
    if (l$emailSignUp != lOther$emailSignUp) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$emailSignUp on Mutation$emailSignUp {
  CopyWith$Mutation$emailSignUp<Mutation$emailSignUp> get copyWith =>
      CopyWith$Mutation$emailSignUp(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$emailSignUp<TRes> {
  factory CopyWith$Mutation$emailSignUp(
    Mutation$emailSignUp instance,
    TRes Function(Mutation$emailSignUp) then,
  ) = _CopyWithImpl$Mutation$emailSignUp;

  factory CopyWith$Mutation$emailSignUp.stub(TRes res) =
      _CopyWithStubImpl$Mutation$emailSignUp;

  TRes call({
    bool? emailSignUp,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$emailSignUp<TRes>
    implements CopyWith$Mutation$emailSignUp<TRes> {
  _CopyWithImpl$Mutation$emailSignUp(
    this._instance,
    this._then,
  );

  final Mutation$emailSignUp _instance;

  final TRes Function(Mutation$emailSignUp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? emailSignUp = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$emailSignUp(
        emailSignUp: emailSignUp == _undefined || emailSignUp == null
            ? _instance.emailSignUp
            : (emailSignUp as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$emailSignUp<TRes>
    implements CopyWith$Mutation$emailSignUp<TRes> {
  _CopyWithStubImpl$Mutation$emailSignUp(this._res);

  TRes _res;

  call({
    bool? emailSignUp,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeMutationemailSignUp = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'emailSignUp'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'EmailSignUpInputTypeInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'emailSignUp'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
          )
        ],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Mutation$emailSignUp _parserFn$Mutation$emailSignUp(
        Map<String, dynamic> data) =>
    Mutation$emailSignUp.fromJson(data);
typedef OnMutationCompleted$Mutation$emailSignUp = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$emailSignUp?,
);

class Options$Mutation$emailSignUp
    extends graphql.MutationOptions<Mutation$emailSignUp> {
  Options$Mutation$emailSignUp({
    String? operationName,
    required Variables$Mutation$emailSignUp variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$emailSignUp? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$emailSignUp? onCompleted,
    graphql.OnMutationUpdate<Mutation$emailSignUp>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$emailSignUp(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationemailSignUp,
          parserFn: _parserFn$Mutation$emailSignUp,
        );

  final OnMutationCompleted$Mutation$emailSignUp? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$emailSignUp
    extends graphql.WatchQueryOptions<Mutation$emailSignUp> {
  WatchOptions$Mutation$emailSignUp({
    String? operationName,
    required Variables$Mutation$emailSignUp variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$emailSignUp? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationemailSignUp,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$emailSignUp,
        );
}

extension ClientExtension$Mutation$emailSignUp on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$emailSignUp>> mutate$emailSignUp(
          Options$Mutation$emailSignUp options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$emailSignUp> watchMutation$emailSignUp(
          WatchOptions$Mutation$emailSignUp options) =>
      this.watchMutation(options);
}

class Variables$Mutation$signInGoogle {
  factory Variables$Mutation$signInGoogle({required String idToken}) =>
      Variables$Mutation$signInGoogle._({
        r'idToken': idToken,
      });

  Variables$Mutation$signInGoogle._(this._$data);

  factory Variables$Mutation$signInGoogle.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$idToken = data['idToken'];
    result$data['idToken'] = (l$idToken as String);
    return Variables$Mutation$signInGoogle._(result$data);
  }

  Map<String, dynamic> _$data;

  String get idToken => (_$data['idToken'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$idToken = idToken;
    result$data['idToken'] = l$idToken;
    return result$data;
  }

  CopyWith$Variables$Mutation$signInGoogle<Variables$Mutation$signInGoogle>
      get copyWith => CopyWith$Variables$Mutation$signInGoogle(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$signInGoogle) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$idToken = idToken;
    final lOther$idToken = other.idToken;
    if (l$idToken != lOther$idToken) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$idToken = idToken;
    return Object.hashAll([l$idToken]);
  }
}

abstract class CopyWith$Variables$Mutation$signInGoogle<TRes> {
  factory CopyWith$Variables$Mutation$signInGoogle(
    Variables$Mutation$signInGoogle instance,
    TRes Function(Variables$Mutation$signInGoogle) then,
  ) = _CopyWithImpl$Variables$Mutation$signInGoogle;

  factory CopyWith$Variables$Mutation$signInGoogle.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$signInGoogle;

  TRes call({String? idToken});
}

class _CopyWithImpl$Variables$Mutation$signInGoogle<TRes>
    implements CopyWith$Variables$Mutation$signInGoogle<TRes> {
  _CopyWithImpl$Variables$Mutation$signInGoogle(
    this._instance,
    this._then,
  );

  final Variables$Mutation$signInGoogle _instance;

  final TRes Function(Variables$Mutation$signInGoogle) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? idToken = _undefined}) =>
      _then(Variables$Mutation$signInGoogle._({
        ..._instance._$data,
        if (idToken != _undefined && idToken != null)
          'idToken': (idToken as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$signInGoogle<TRes>
    implements CopyWith$Variables$Mutation$signInGoogle<TRes> {
  _CopyWithStubImpl$Variables$Mutation$signInGoogle(this._res);

  TRes _res;

  call({String? idToken}) => _res;
}

class Mutation$signInGoogle {
  Mutation$signInGoogle({
    required this.googleSignIn,
    this.$__typename = 'Mutation',
  });

  factory Mutation$signInGoogle.fromJson(Map<String, dynamic> json) {
    final l$googleSignIn = json['googleSignIn'];
    final l$$__typename = json['__typename'];
    return Mutation$signInGoogle(
      googleSignIn: (l$googleSignIn as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String googleSignIn;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$googleSignIn = googleSignIn;
    _resultData['googleSignIn'] = l$googleSignIn;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$googleSignIn = googleSignIn;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$googleSignIn,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$signInGoogle) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$googleSignIn = googleSignIn;
    final lOther$googleSignIn = other.googleSignIn;
    if (l$googleSignIn != lOther$googleSignIn) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$signInGoogle on Mutation$signInGoogle {
  CopyWith$Mutation$signInGoogle<Mutation$signInGoogle> get copyWith =>
      CopyWith$Mutation$signInGoogle(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$signInGoogle<TRes> {
  factory CopyWith$Mutation$signInGoogle(
    Mutation$signInGoogle instance,
    TRes Function(Mutation$signInGoogle) then,
  ) = _CopyWithImpl$Mutation$signInGoogle;

  factory CopyWith$Mutation$signInGoogle.stub(TRes res) =
      _CopyWithStubImpl$Mutation$signInGoogle;

  TRes call({
    String? googleSignIn,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$signInGoogle<TRes>
    implements CopyWith$Mutation$signInGoogle<TRes> {
  _CopyWithImpl$Mutation$signInGoogle(
    this._instance,
    this._then,
  );

  final Mutation$signInGoogle _instance;

  final TRes Function(Mutation$signInGoogle) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? googleSignIn = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$signInGoogle(
        googleSignIn: googleSignIn == _undefined || googleSignIn == null
            ? _instance.googleSignIn
            : (googleSignIn as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$signInGoogle<TRes>
    implements CopyWith$Mutation$signInGoogle<TRes> {
  _CopyWithStubImpl$Mutation$signInGoogle(this._res);

  TRes _res;

  call({
    String? googleSignIn,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeMutationsignInGoogle = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'signInGoogle'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'idToken')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'googleSignIn'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'idToken'),
            value: VariableNode(name: NameNode(value: 'idToken')),
          )
        ],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Mutation$signInGoogle _parserFn$Mutation$signInGoogle(
        Map<String, dynamic> data) =>
    Mutation$signInGoogle.fromJson(data);
typedef OnMutationCompleted$Mutation$signInGoogle = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$signInGoogle?,
);

class Options$Mutation$signInGoogle
    extends graphql.MutationOptions<Mutation$signInGoogle> {
  Options$Mutation$signInGoogle({
    String? operationName,
    required Variables$Mutation$signInGoogle variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$signInGoogle? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$signInGoogle? onCompleted,
    graphql.OnMutationUpdate<Mutation$signInGoogle>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$signInGoogle(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationsignInGoogle,
          parserFn: _parserFn$Mutation$signInGoogle,
        );

  final OnMutationCompleted$Mutation$signInGoogle? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$signInGoogle
    extends graphql.WatchQueryOptions<Mutation$signInGoogle> {
  WatchOptions$Mutation$signInGoogle({
    String? operationName,
    required Variables$Mutation$signInGoogle variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$signInGoogle? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationsignInGoogle,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$signInGoogle,
        );
}

extension ClientExtension$Mutation$signInGoogle on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$signInGoogle>> mutate$signInGoogle(
          Options$Mutation$signInGoogle options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$signInGoogle> watchMutation$signInGoogle(
          WatchOptions$Mutation$signInGoogle options) =>
      this.watchMutation(options);
}
