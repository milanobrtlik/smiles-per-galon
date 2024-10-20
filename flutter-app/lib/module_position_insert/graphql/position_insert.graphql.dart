import '../../fragments.graphql.dart';
import '../../schema.graphql.dart';
import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Variables$Mutation$positionHistoryInsert {
  factory Variables$Mutation$positionHistoryInsert(
          {required Input$PositionHistoryInput input}) =>
      Variables$Mutation$positionHistoryInsert._({
        r'input': input,
      });

  Variables$Mutation$positionHistoryInsert._(this._$data);

  factory Variables$Mutation$positionHistoryInsert.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$PositionHistoryInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$positionHistoryInsert._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$PositionHistoryInput get input =>
      (_$data['input'] as Input$PositionHistoryInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$positionHistoryInsert<
          Variables$Mutation$positionHistoryInsert>
      get copyWith => CopyWith$Variables$Mutation$positionHistoryInsert(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$positionHistoryInsert) ||
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

abstract class CopyWith$Variables$Mutation$positionHistoryInsert<TRes> {
  factory CopyWith$Variables$Mutation$positionHistoryInsert(
    Variables$Mutation$positionHistoryInsert instance,
    TRes Function(Variables$Mutation$positionHistoryInsert) then,
  ) = _CopyWithImpl$Variables$Mutation$positionHistoryInsert;

  factory CopyWith$Variables$Mutation$positionHistoryInsert.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$positionHistoryInsert;

  TRes call({Input$PositionHistoryInput? input});
}

class _CopyWithImpl$Variables$Mutation$positionHistoryInsert<TRes>
    implements CopyWith$Variables$Mutation$positionHistoryInsert<TRes> {
  _CopyWithImpl$Variables$Mutation$positionHistoryInsert(
    this._instance,
    this._then,
  );

  final Variables$Mutation$positionHistoryInsert _instance;

  final TRes Function(Variables$Mutation$positionHistoryInsert) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$positionHistoryInsert._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$PositionHistoryInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$positionHistoryInsert<TRes>
    implements CopyWith$Variables$Mutation$positionHistoryInsert<TRes> {
  _CopyWithStubImpl$Variables$Mutation$positionHistoryInsert(this._res);

  TRes _res;

  call({Input$PositionHistoryInput? input}) => _res;
}

class Mutation$positionHistoryInsert {
  Mutation$positionHistoryInsert({
    required this.positionHistoryInsert,
    this.$__typename = 'Mutation',
  });

  factory Mutation$positionHistoryInsert.fromJson(Map<String, dynamic> json) {
    final l$positionHistoryInsert = json['positionHistoryInsert'];
    final l$$__typename = json['__typename'];
    return Mutation$positionHistoryInsert(
      positionHistoryInsert:
          Mutation$positionHistoryInsert$positionHistoryInsert.fromJson(
              (l$positionHistoryInsert as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$positionHistoryInsert$positionHistoryInsert
      positionHistoryInsert;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$positionHistoryInsert = positionHistoryInsert;
    _resultData['positionHistoryInsert'] = l$positionHistoryInsert.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$positionHistoryInsert = positionHistoryInsert;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$positionHistoryInsert,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$positionHistoryInsert) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$positionHistoryInsert = positionHistoryInsert;
    final lOther$positionHistoryInsert = other.positionHistoryInsert;
    if (l$positionHistoryInsert != lOther$positionHistoryInsert) {
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

extension UtilityExtension$Mutation$positionHistoryInsert
    on Mutation$positionHistoryInsert {
  CopyWith$Mutation$positionHistoryInsert<Mutation$positionHistoryInsert>
      get copyWith => CopyWith$Mutation$positionHistoryInsert(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$positionHistoryInsert<TRes> {
  factory CopyWith$Mutation$positionHistoryInsert(
    Mutation$positionHistoryInsert instance,
    TRes Function(Mutation$positionHistoryInsert) then,
  ) = _CopyWithImpl$Mutation$positionHistoryInsert;

  factory CopyWith$Mutation$positionHistoryInsert.stub(TRes res) =
      _CopyWithStubImpl$Mutation$positionHistoryInsert;

  TRes call({
    Mutation$positionHistoryInsert$positionHistoryInsert? positionHistoryInsert,
    String? $__typename,
  });
  CopyWith$Mutation$positionHistoryInsert$positionHistoryInsert<TRes>
      get positionHistoryInsert;
}

class _CopyWithImpl$Mutation$positionHistoryInsert<TRes>
    implements CopyWith$Mutation$positionHistoryInsert<TRes> {
  _CopyWithImpl$Mutation$positionHistoryInsert(
    this._instance,
    this._then,
  );

  final Mutation$positionHistoryInsert _instance;

  final TRes Function(Mutation$positionHistoryInsert) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? positionHistoryInsert = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$positionHistoryInsert(
        positionHistoryInsert:
            positionHistoryInsert == _undefined || positionHistoryInsert == null
                ? _instance.positionHistoryInsert
                : (positionHistoryInsert
                    as Mutation$positionHistoryInsert$positionHistoryInsert),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$positionHistoryInsert$positionHistoryInsert<TRes>
      get positionHistoryInsert {
    final local$positionHistoryInsert = _instance.positionHistoryInsert;
    return CopyWith$Mutation$positionHistoryInsert$positionHistoryInsert(
        local$positionHistoryInsert, (e) => call(positionHistoryInsert: e));
  }
}

class _CopyWithStubImpl$Mutation$positionHistoryInsert<TRes>
    implements CopyWith$Mutation$positionHistoryInsert<TRes> {
  _CopyWithStubImpl$Mutation$positionHistoryInsert(this._res);

  TRes _res;

  call({
    Mutation$positionHistoryInsert$positionHistoryInsert? positionHistoryInsert,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$positionHistoryInsert$positionHistoryInsert<TRes>
      get positionHistoryInsert =>
          CopyWith$Mutation$positionHistoryInsert$positionHistoryInsert.stub(
              _res);
}

const documentNodeMutationpositionHistoryInsert = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'positionHistoryInsert'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'PositionHistoryInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'positionHistoryInsert'),
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
            name: NameNode(value: 'positionHistory'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'PositionDetail'),
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
  fragmentDefinitionPositionDetail,
  fragmentDefinitionUserFragment,
  fragmentDefinitionLocation,
  fragmentDefinitionPhotoDetail,
  fragmentDefinitionErrorDetail,
]);
Mutation$positionHistoryInsert _parserFn$Mutation$positionHistoryInsert(
        Map<String, dynamic> data) =>
    Mutation$positionHistoryInsert.fromJson(data);
typedef OnMutationCompleted$Mutation$positionHistoryInsert = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$positionHistoryInsert?,
);

class Options$Mutation$positionHistoryInsert
    extends graphql.MutationOptions<Mutation$positionHistoryInsert> {
  Options$Mutation$positionHistoryInsert({
    String? operationName,
    required Variables$Mutation$positionHistoryInsert variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$positionHistoryInsert? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$positionHistoryInsert? onCompleted,
    graphql.OnMutationUpdate<Mutation$positionHistoryInsert>? update,
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
                    data == null
                        ? null
                        : _parserFn$Mutation$positionHistoryInsert(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationpositionHistoryInsert,
          parserFn: _parserFn$Mutation$positionHistoryInsert,
        );

  final OnMutationCompleted$Mutation$positionHistoryInsert?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$positionHistoryInsert
    extends graphql.WatchQueryOptions<Mutation$positionHistoryInsert> {
  WatchOptions$Mutation$positionHistoryInsert({
    String? operationName,
    required Variables$Mutation$positionHistoryInsert variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$positionHistoryInsert? typedOptimisticResult,
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
          document: documentNodeMutationpositionHistoryInsert,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$positionHistoryInsert,
        );
}

extension ClientExtension$Mutation$positionHistoryInsert
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$positionHistoryInsert>>
      mutate$positionHistoryInsert(
              Options$Mutation$positionHistoryInsert options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$positionHistoryInsert>
      watchMutation$positionHistoryInsert(
              WatchOptions$Mutation$positionHistoryInsert options) =>
          this.watchMutation(options);
}

class Mutation$positionHistoryInsert$positionHistoryInsert {
  Mutation$positionHistoryInsert$positionHistoryInsert({
    this.positionHistory,
    required this.errors,
    this.$__typename = 'PositionHistoryPayload',
  });

  factory Mutation$positionHistoryInsert$positionHistoryInsert.fromJson(
      Map<String, dynamic> json) {
    final l$positionHistory = json['positionHistory'];
    final l$errors = json['errors'];
    final l$$__typename = json['__typename'];
    return Mutation$positionHistoryInsert$positionHistoryInsert(
      positionHistory: l$positionHistory == null
          ? null
          : Fragment$PositionDetail.fromJson(
              (l$positionHistory as Map<String, dynamic>)),
      errors: (l$errors as List<dynamic>)
          .map(
              (e) => Fragment$ErrorDetail.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$PositionDetail? positionHistory;

  final List<Fragment$ErrorDetail> errors;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$positionHistory = positionHistory;
    _resultData['positionHistory'] = l$positionHistory?.toJson();
    final l$errors = errors;
    _resultData['errors'] = l$errors.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$positionHistory = positionHistory;
    final l$errors = errors;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$positionHistory,
      Object.hashAll(l$errors.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$positionHistoryInsert$positionHistoryInsert) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$positionHistory = positionHistory;
    final lOther$positionHistory = other.positionHistory;
    if (l$positionHistory != lOther$positionHistory) {
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

extension UtilityExtension$Mutation$positionHistoryInsert$positionHistoryInsert
    on Mutation$positionHistoryInsert$positionHistoryInsert {
  CopyWith$Mutation$positionHistoryInsert$positionHistoryInsert<
          Mutation$positionHistoryInsert$positionHistoryInsert>
      get copyWith =>
          CopyWith$Mutation$positionHistoryInsert$positionHistoryInsert(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$positionHistoryInsert$positionHistoryInsert<
    TRes> {
  factory CopyWith$Mutation$positionHistoryInsert$positionHistoryInsert(
    Mutation$positionHistoryInsert$positionHistoryInsert instance,
    TRes Function(Mutation$positionHistoryInsert$positionHistoryInsert) then,
  ) = _CopyWithImpl$Mutation$positionHistoryInsert$positionHistoryInsert;

  factory CopyWith$Mutation$positionHistoryInsert$positionHistoryInsert.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$positionHistoryInsert$positionHistoryInsert;

  TRes call({
    Fragment$PositionDetail? positionHistory,
    List<Fragment$ErrorDetail>? errors,
    String? $__typename,
  });
  CopyWith$Fragment$PositionDetail<TRes> get positionHistory;
  TRes errors(
      Iterable<Fragment$ErrorDetail> Function(
              Iterable<CopyWith$Fragment$ErrorDetail<Fragment$ErrorDetail>>)
          _fn);
}

class _CopyWithImpl$Mutation$positionHistoryInsert$positionHistoryInsert<TRes>
    implements
        CopyWith$Mutation$positionHistoryInsert$positionHistoryInsert<TRes> {
  _CopyWithImpl$Mutation$positionHistoryInsert$positionHistoryInsert(
    this._instance,
    this._then,
  );

  final Mutation$positionHistoryInsert$positionHistoryInsert _instance;

  final TRes Function(Mutation$positionHistoryInsert$positionHistoryInsert)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? positionHistory = _undefined,
    Object? errors = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$positionHistoryInsert$positionHistoryInsert(
        positionHistory: positionHistory == _undefined
            ? _instance.positionHistory
            : (positionHistory as Fragment$PositionDetail?),
        errors: errors == _undefined || errors == null
            ? _instance.errors
            : (errors as List<Fragment$ErrorDetail>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$PositionDetail<TRes> get positionHistory {
    final local$positionHistory = _instance.positionHistory;
    return local$positionHistory == null
        ? CopyWith$Fragment$PositionDetail.stub(_then(_instance))
        : CopyWith$Fragment$PositionDetail(
            local$positionHistory, (e) => call(positionHistory: e));
  }

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

class _CopyWithStubImpl$Mutation$positionHistoryInsert$positionHistoryInsert<
        TRes>
    implements
        CopyWith$Mutation$positionHistoryInsert$positionHistoryInsert<TRes> {
  _CopyWithStubImpl$Mutation$positionHistoryInsert$positionHistoryInsert(
      this._res);

  TRes _res;

  call({
    Fragment$PositionDetail? positionHistory,
    List<Fragment$ErrorDetail>? errors,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$PositionDetail<TRes> get positionHistory =>
      CopyWith$Fragment$PositionDetail.stub(_res);
  errors(_fn) => _res;
}
