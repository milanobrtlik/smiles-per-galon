import '../../fragments.graphql.dart';
import '../../schema.graphql.dart';
import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Query$carList {
  Query$carList({
    required this.carList,
    this.$__typename = 'Query',
  });

  factory Query$carList.fromJson(Map<String, dynamic> json) {
    final l$carList = json['carList'];
    final l$$__typename = json['__typename'];
    return Query$carList(
      carList: (l$carList as List<dynamic>)
          .map((e) => Fragment$CarList.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$CarList> carList;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$carList = carList;
    _resultData['carList'] = l$carList.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$carList = carList;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$carList.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$carList) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$carList = carList;
    final lOther$carList = other.carList;
    if (l$carList.length != lOther$carList.length) {
      return false;
    }
    for (int i = 0; i < l$carList.length; i++) {
      final l$carList$entry = l$carList[i];
      final lOther$carList$entry = lOther$carList[i];
      if (l$carList$entry != lOther$carList$entry) {
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

extension UtilityExtension$Query$carList on Query$carList {
  CopyWith$Query$carList<Query$carList> get copyWith => CopyWith$Query$carList(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$carList<TRes> {
  factory CopyWith$Query$carList(
    Query$carList instance,
    TRes Function(Query$carList) then,
  ) = _CopyWithImpl$Query$carList;

  factory CopyWith$Query$carList.stub(TRes res) =
      _CopyWithStubImpl$Query$carList;

  TRes call({
    List<Fragment$CarList>? carList,
    String? $__typename,
  });
  TRes carList(
      Iterable<Fragment$CarList> Function(
              Iterable<CopyWith$Fragment$CarList<Fragment$CarList>>)
          _fn);
}

class _CopyWithImpl$Query$carList<TRes>
    implements CopyWith$Query$carList<TRes> {
  _CopyWithImpl$Query$carList(
    this._instance,
    this._then,
  );

  final Query$carList _instance;

  final TRes Function(Query$carList) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? carList = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$carList(
        carList: carList == _undefined || carList == null
            ? _instance.carList
            : (carList as List<Fragment$CarList>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes carList(
          Iterable<Fragment$CarList> Function(
                  Iterable<CopyWith$Fragment$CarList<Fragment$CarList>>)
              _fn) =>
      call(
          carList: _fn(_instance.carList.map((e) => CopyWith$Fragment$CarList(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$carList<TRes>
    implements CopyWith$Query$carList<TRes> {
  _CopyWithStubImpl$Query$carList(this._res);

  TRes _res;

  call({
    List<Fragment$CarList>? carList,
    String? $__typename,
  }) =>
      _res;
  carList(_fn) => _res;
}

const documentNodeQuerycarList = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'carList'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'carList'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'CarList'),
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
  fragmentDefinitionCarList,
  fragmentDefinitionUserFragment,
]);
Query$carList _parserFn$Query$carList(Map<String, dynamic> data) =>
    Query$carList.fromJson(data);
typedef OnQueryComplete$Query$carList = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$carList?,
);

class Options$Query$carList extends graphql.QueryOptions<Query$carList> {
  Options$Query$carList({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$carList? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$carList? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null ? null : _parserFn$Query$carList(data),
                  ),
          onError: onError,
          document: documentNodeQuerycarList,
          parserFn: _parserFn$Query$carList,
        );

  final OnQueryComplete$Query$carList? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$carList
    extends graphql.WatchQueryOptions<Query$carList> {
  WatchOptions$Query$carList({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$carList? typedOptimisticResult,
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
          document: documentNodeQuerycarList,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$carList,
        );
}

class FetchMoreOptions$Query$carList extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$carList({required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQuerycarList,
        );
}

extension ClientExtension$Query$carList on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$carList>> query$carList(
          [Options$Query$carList? options]) async =>
      await this.query(options ?? Options$Query$carList());
  graphql.ObservableQuery<Query$carList> watchQuery$carList(
          [WatchOptions$Query$carList? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$carList());
  void writeQuery$carList({
    required Query$carList data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation: graphql.Operation(document: documentNodeQuerycarList)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$carList? readQuery$carList({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(document: documentNodeQuerycarList)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$carList.fromJson(result);
  }
}

class Variables$Query$carDetail {
  factory Variables$Query$carDetail({required String id}) =>
      Variables$Query$carDetail._({
        r'id': id,
      });

  Variables$Query$carDetail._(this._$data);

  factory Variables$Query$carDetail.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Query$carDetail._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Query$carDetail<Variables$Query$carDetail> get copyWith =>
      CopyWith$Variables$Query$carDetail(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$carDetail) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith$Variables$Query$carDetail<TRes> {
  factory CopyWith$Variables$Query$carDetail(
    Variables$Query$carDetail instance,
    TRes Function(Variables$Query$carDetail) then,
  ) = _CopyWithImpl$Variables$Query$carDetail;

  factory CopyWith$Variables$Query$carDetail.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$carDetail;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Query$carDetail<TRes>
    implements CopyWith$Variables$Query$carDetail<TRes> {
  _CopyWithImpl$Variables$Query$carDetail(
    this._instance,
    this._then,
  );

  final Variables$Query$carDetail _instance;

  final TRes Function(Variables$Query$carDetail) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(Variables$Query$carDetail._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$carDetail<TRes>
    implements CopyWith$Variables$Query$carDetail<TRes> {
  _CopyWithStubImpl$Variables$Query$carDetail(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Query$carDetail {
  Query$carDetail({
    this.carDetail,
    this.$__typename = 'Query',
  });

  factory Query$carDetail.fromJson(Map<String, dynamic> json) {
    final l$carDetail = json['carDetail'];
    final l$$__typename = json['__typename'];
    return Query$carDetail(
      carDetail: l$carDetail == null
          ? null
          : Fragment$CarDetail.fromJson((l$carDetail as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$CarDetail? carDetail;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$carDetail = carDetail;
    _resultData['carDetail'] = l$carDetail?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$carDetail = carDetail;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$carDetail,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$carDetail) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$carDetail = carDetail;
    final lOther$carDetail = other.carDetail;
    if (l$carDetail != lOther$carDetail) {
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

extension UtilityExtension$Query$carDetail on Query$carDetail {
  CopyWith$Query$carDetail<Query$carDetail> get copyWith =>
      CopyWith$Query$carDetail(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$carDetail<TRes> {
  factory CopyWith$Query$carDetail(
    Query$carDetail instance,
    TRes Function(Query$carDetail) then,
  ) = _CopyWithImpl$Query$carDetail;

  factory CopyWith$Query$carDetail.stub(TRes res) =
      _CopyWithStubImpl$Query$carDetail;

  TRes call({
    Fragment$CarDetail? carDetail,
    String? $__typename,
  });
  CopyWith$Fragment$CarDetail<TRes> get carDetail;
}

class _CopyWithImpl$Query$carDetail<TRes>
    implements CopyWith$Query$carDetail<TRes> {
  _CopyWithImpl$Query$carDetail(
    this._instance,
    this._then,
  );

  final Query$carDetail _instance;

  final TRes Function(Query$carDetail) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? carDetail = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$carDetail(
        carDetail: carDetail == _undefined
            ? _instance.carDetail
            : (carDetail as Fragment$CarDetail?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$CarDetail<TRes> get carDetail {
    final local$carDetail = _instance.carDetail;
    return local$carDetail == null
        ? CopyWith$Fragment$CarDetail.stub(_then(_instance))
        : CopyWith$Fragment$CarDetail(
            local$carDetail, (e) => call(carDetail: e));
  }
}

class _CopyWithStubImpl$Query$carDetail<TRes>
    implements CopyWith$Query$carDetail<TRes> {
  _CopyWithStubImpl$Query$carDetail(this._res);

  TRes _res;

  call({
    Fragment$CarDetail? carDetail,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$CarDetail<TRes> get carDetail =>
      CopyWith$Fragment$CarDetail.stub(_res);
}

const documentNodeQuerycarDetail = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'carDetail'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'carDetail'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'CarDetail'),
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
  fragmentDefinitionCarDetail,
  fragmentDefinitionCarList,
  fragmentDefinitionUserFragment,
  fragmentDefinitionPositionDetail,
  fragmentDefinitionLocation,
  fragmentDefinitionPhotoDetail,
]);
Query$carDetail _parserFn$Query$carDetail(Map<String, dynamic> data) =>
    Query$carDetail.fromJson(data);
typedef OnQueryComplete$Query$carDetail = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$carDetail?,
);

class Options$Query$carDetail extends graphql.QueryOptions<Query$carDetail> {
  Options$Query$carDetail({
    String? operationName,
    required Variables$Query$carDetail variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$carDetail? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$carDetail? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null ? null : _parserFn$Query$carDetail(data),
                  ),
          onError: onError,
          document: documentNodeQuerycarDetail,
          parserFn: _parserFn$Query$carDetail,
        );

  final OnQueryComplete$Query$carDetail? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$carDetail
    extends graphql.WatchQueryOptions<Query$carDetail> {
  WatchOptions$Query$carDetail({
    String? operationName,
    required Variables$Query$carDetail variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$carDetail? typedOptimisticResult,
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
          document: documentNodeQuerycarDetail,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$carDetail,
        );
}

class FetchMoreOptions$Query$carDetail extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$carDetail({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$carDetail variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQuerycarDetail,
        );
}

extension ClientExtension$Query$carDetail on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$carDetail>> query$carDetail(
          Options$Query$carDetail options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$carDetail> watchQuery$carDetail(
          WatchOptions$Query$carDetail options) =>
      this.watchQuery(options);
  void writeQuery$carDetail({
    required Query$carDetail data,
    required Variables$Query$carDetail variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQuerycarDetail),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$carDetail? readQuery$carDetail({
    required Variables$Query$carDetail variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQuerycarDetail),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$carDetail.fromJson(result);
  }
}

class Variables$Mutation$carCreate {
  factory Variables$Mutation$carCreate({required Input$CarCreateInput input}) =>
      Variables$Mutation$carCreate._({
        r'input': input,
      });

  Variables$Mutation$carCreate._(this._$data);

  factory Variables$Mutation$carCreate.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$CarCreateInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$carCreate._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$CarCreateInput get input => (_$data['input'] as Input$CarCreateInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$carCreate<Variables$Mutation$carCreate>
      get copyWith => CopyWith$Variables$Mutation$carCreate(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$carCreate) ||
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

abstract class CopyWith$Variables$Mutation$carCreate<TRes> {
  factory CopyWith$Variables$Mutation$carCreate(
    Variables$Mutation$carCreate instance,
    TRes Function(Variables$Mutation$carCreate) then,
  ) = _CopyWithImpl$Variables$Mutation$carCreate;

  factory CopyWith$Variables$Mutation$carCreate.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$carCreate;

  TRes call({Input$CarCreateInput? input});
}

class _CopyWithImpl$Variables$Mutation$carCreate<TRes>
    implements CopyWith$Variables$Mutation$carCreate<TRes> {
  _CopyWithImpl$Variables$Mutation$carCreate(
    this._instance,
    this._then,
  );

  final Variables$Mutation$carCreate _instance;

  final TRes Function(Variables$Mutation$carCreate) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$carCreate._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$CarCreateInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$carCreate<TRes>
    implements CopyWith$Variables$Mutation$carCreate<TRes> {
  _CopyWithStubImpl$Variables$Mutation$carCreate(this._res);

  TRes _res;

  call({Input$CarCreateInput? input}) => _res;
}

class Mutation$carCreate {
  Mutation$carCreate({
    required this.carCreate,
    this.$__typename = 'Mutation',
  });

  factory Mutation$carCreate.fromJson(Map<String, dynamic> json) {
    final l$carCreate = json['carCreate'];
    final l$$__typename = json['__typename'];
    return Mutation$carCreate(
      carCreate: Mutation$carCreate$carCreate.fromJson(
          (l$carCreate as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$carCreate$carCreate carCreate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$carCreate = carCreate;
    _resultData['carCreate'] = l$carCreate.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$carCreate = carCreate;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$carCreate,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$carCreate) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$carCreate = carCreate;
    final lOther$carCreate = other.carCreate;
    if (l$carCreate != lOther$carCreate) {
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

extension UtilityExtension$Mutation$carCreate on Mutation$carCreate {
  CopyWith$Mutation$carCreate<Mutation$carCreate> get copyWith =>
      CopyWith$Mutation$carCreate(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$carCreate<TRes> {
  factory CopyWith$Mutation$carCreate(
    Mutation$carCreate instance,
    TRes Function(Mutation$carCreate) then,
  ) = _CopyWithImpl$Mutation$carCreate;

  factory CopyWith$Mutation$carCreate.stub(TRes res) =
      _CopyWithStubImpl$Mutation$carCreate;

  TRes call({
    Mutation$carCreate$carCreate? carCreate,
    String? $__typename,
  });
  CopyWith$Mutation$carCreate$carCreate<TRes> get carCreate;
}

class _CopyWithImpl$Mutation$carCreate<TRes>
    implements CopyWith$Mutation$carCreate<TRes> {
  _CopyWithImpl$Mutation$carCreate(
    this._instance,
    this._then,
  );

  final Mutation$carCreate _instance;

  final TRes Function(Mutation$carCreate) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? carCreate = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$carCreate(
        carCreate: carCreate == _undefined || carCreate == null
            ? _instance.carCreate
            : (carCreate as Mutation$carCreate$carCreate),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$carCreate$carCreate<TRes> get carCreate {
    final local$carCreate = _instance.carCreate;
    return CopyWith$Mutation$carCreate$carCreate(
        local$carCreate, (e) => call(carCreate: e));
  }
}

class _CopyWithStubImpl$Mutation$carCreate<TRes>
    implements CopyWith$Mutation$carCreate<TRes> {
  _CopyWithStubImpl$Mutation$carCreate(this._res);

  TRes _res;

  call({
    Mutation$carCreate$carCreate? carCreate,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$carCreate$carCreate<TRes> get carCreate =>
      CopyWith$Mutation$carCreate$carCreate.stub(_res);
}

const documentNodeMutationcarCreate = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'carCreate'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'CarCreateInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'carCreate'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'createInput'),
            value: VariableNode(name: NameNode(value: 'input')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'car'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'CarDetail'),
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
  fragmentDefinitionCarDetail,
  fragmentDefinitionCarList,
  fragmentDefinitionUserFragment,
  fragmentDefinitionPositionDetail,
  fragmentDefinitionLocation,
  fragmentDefinitionPhotoDetail,
  fragmentDefinitionErrorDetail,
]);
Mutation$carCreate _parserFn$Mutation$carCreate(Map<String, dynamic> data) =>
    Mutation$carCreate.fromJson(data);
typedef OnMutationCompleted$Mutation$carCreate = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$carCreate?,
);

class Options$Mutation$carCreate
    extends graphql.MutationOptions<Mutation$carCreate> {
  Options$Mutation$carCreate({
    String? operationName,
    required Variables$Mutation$carCreate variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$carCreate? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$carCreate? onCompleted,
    graphql.OnMutationUpdate<Mutation$carCreate>? update,
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
                    data == null ? null : _parserFn$Mutation$carCreate(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationcarCreate,
          parserFn: _parserFn$Mutation$carCreate,
        );

  final OnMutationCompleted$Mutation$carCreate? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$carCreate
    extends graphql.WatchQueryOptions<Mutation$carCreate> {
  WatchOptions$Mutation$carCreate({
    String? operationName,
    required Variables$Mutation$carCreate variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$carCreate? typedOptimisticResult,
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
          document: documentNodeMutationcarCreate,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$carCreate,
        );
}

extension ClientExtension$Mutation$carCreate on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$carCreate>> mutate$carCreate(
          Options$Mutation$carCreate options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$carCreate> watchMutation$carCreate(
          WatchOptions$Mutation$carCreate options) =>
      this.watchMutation(options);
}

class Mutation$carCreate$carCreate {
  Mutation$carCreate$carCreate({
    this.car,
    required this.errors,
    this.$__typename = 'CarPayload',
  });

  factory Mutation$carCreate$carCreate.fromJson(Map<String, dynamic> json) {
    final l$car = json['car'];
    final l$errors = json['errors'];
    final l$$__typename = json['__typename'];
    return Mutation$carCreate$carCreate(
      car: l$car == null
          ? null
          : Fragment$CarDetail.fromJson((l$car as Map<String, dynamic>)),
      errors: (l$errors as List<dynamic>)
          .map(
              (e) => Fragment$ErrorDetail.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$CarDetail? car;

  final List<Fragment$ErrorDetail> errors;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$car = car;
    _resultData['car'] = l$car?.toJson();
    final l$errors = errors;
    _resultData['errors'] = l$errors.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$car = car;
    final l$errors = errors;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$car,
      Object.hashAll(l$errors.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$carCreate$carCreate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$car = car;
    final lOther$car = other.car;
    if (l$car != lOther$car) {
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

extension UtilityExtension$Mutation$carCreate$carCreate
    on Mutation$carCreate$carCreate {
  CopyWith$Mutation$carCreate$carCreate<Mutation$carCreate$carCreate>
      get copyWith => CopyWith$Mutation$carCreate$carCreate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$carCreate$carCreate<TRes> {
  factory CopyWith$Mutation$carCreate$carCreate(
    Mutation$carCreate$carCreate instance,
    TRes Function(Mutation$carCreate$carCreate) then,
  ) = _CopyWithImpl$Mutation$carCreate$carCreate;

  factory CopyWith$Mutation$carCreate$carCreate.stub(TRes res) =
      _CopyWithStubImpl$Mutation$carCreate$carCreate;

  TRes call({
    Fragment$CarDetail? car,
    List<Fragment$ErrorDetail>? errors,
    String? $__typename,
  });
  CopyWith$Fragment$CarDetail<TRes> get car;
  TRes errors(
      Iterable<Fragment$ErrorDetail> Function(
              Iterable<CopyWith$Fragment$ErrorDetail<Fragment$ErrorDetail>>)
          _fn);
}

class _CopyWithImpl$Mutation$carCreate$carCreate<TRes>
    implements CopyWith$Mutation$carCreate$carCreate<TRes> {
  _CopyWithImpl$Mutation$carCreate$carCreate(
    this._instance,
    this._then,
  );

  final Mutation$carCreate$carCreate _instance;

  final TRes Function(Mutation$carCreate$carCreate) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? car = _undefined,
    Object? errors = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$carCreate$carCreate(
        car: car == _undefined ? _instance.car : (car as Fragment$CarDetail?),
        errors: errors == _undefined || errors == null
            ? _instance.errors
            : (errors as List<Fragment$ErrorDetail>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$CarDetail<TRes> get car {
    final local$car = _instance.car;
    return local$car == null
        ? CopyWith$Fragment$CarDetail.stub(_then(_instance))
        : CopyWith$Fragment$CarDetail(local$car, (e) => call(car: e));
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

class _CopyWithStubImpl$Mutation$carCreate$carCreate<TRes>
    implements CopyWith$Mutation$carCreate$carCreate<TRes> {
  _CopyWithStubImpl$Mutation$carCreate$carCreate(this._res);

  TRes _res;

  call({
    Fragment$CarDetail? car,
    List<Fragment$ErrorDetail>? errors,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$CarDetail<TRes> get car =>
      CopyWith$Fragment$CarDetail.stub(_res);
  errors(_fn) => _res;
}

class Variables$Mutation$carUpdate {
  factory Variables$Mutation$carUpdate({required Input$CarUpdateInput input}) =>
      Variables$Mutation$carUpdate._({
        r'input': input,
      });

  Variables$Mutation$carUpdate._(this._$data);

  factory Variables$Mutation$carUpdate.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$CarUpdateInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$carUpdate._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$CarUpdateInput get input => (_$data['input'] as Input$CarUpdateInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$carUpdate<Variables$Mutation$carUpdate>
      get copyWith => CopyWith$Variables$Mutation$carUpdate(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$carUpdate) ||
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

abstract class CopyWith$Variables$Mutation$carUpdate<TRes> {
  factory CopyWith$Variables$Mutation$carUpdate(
    Variables$Mutation$carUpdate instance,
    TRes Function(Variables$Mutation$carUpdate) then,
  ) = _CopyWithImpl$Variables$Mutation$carUpdate;

  factory CopyWith$Variables$Mutation$carUpdate.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$carUpdate;

  TRes call({Input$CarUpdateInput? input});
}

class _CopyWithImpl$Variables$Mutation$carUpdate<TRes>
    implements CopyWith$Variables$Mutation$carUpdate<TRes> {
  _CopyWithImpl$Variables$Mutation$carUpdate(
    this._instance,
    this._then,
  );

  final Variables$Mutation$carUpdate _instance;

  final TRes Function(Variables$Mutation$carUpdate) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$carUpdate._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$CarUpdateInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$carUpdate<TRes>
    implements CopyWith$Variables$Mutation$carUpdate<TRes> {
  _CopyWithStubImpl$Variables$Mutation$carUpdate(this._res);

  TRes _res;

  call({Input$CarUpdateInput? input}) => _res;
}

class Mutation$carUpdate {
  Mutation$carUpdate({
    required this.carUpdate,
    this.$__typename = 'Mutation',
  });

  factory Mutation$carUpdate.fromJson(Map<String, dynamic> json) {
    final l$carUpdate = json['carUpdate'];
    final l$$__typename = json['__typename'];
    return Mutation$carUpdate(
      carUpdate: Mutation$carUpdate$carUpdate.fromJson(
          (l$carUpdate as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$carUpdate$carUpdate carUpdate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$carUpdate = carUpdate;
    _resultData['carUpdate'] = l$carUpdate.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$carUpdate = carUpdate;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$carUpdate,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$carUpdate) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$carUpdate = carUpdate;
    final lOther$carUpdate = other.carUpdate;
    if (l$carUpdate != lOther$carUpdate) {
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

extension UtilityExtension$Mutation$carUpdate on Mutation$carUpdate {
  CopyWith$Mutation$carUpdate<Mutation$carUpdate> get copyWith =>
      CopyWith$Mutation$carUpdate(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$carUpdate<TRes> {
  factory CopyWith$Mutation$carUpdate(
    Mutation$carUpdate instance,
    TRes Function(Mutation$carUpdate) then,
  ) = _CopyWithImpl$Mutation$carUpdate;

  factory CopyWith$Mutation$carUpdate.stub(TRes res) =
      _CopyWithStubImpl$Mutation$carUpdate;

  TRes call({
    Mutation$carUpdate$carUpdate? carUpdate,
    String? $__typename,
  });
  CopyWith$Mutation$carUpdate$carUpdate<TRes> get carUpdate;
}

class _CopyWithImpl$Mutation$carUpdate<TRes>
    implements CopyWith$Mutation$carUpdate<TRes> {
  _CopyWithImpl$Mutation$carUpdate(
    this._instance,
    this._then,
  );

  final Mutation$carUpdate _instance;

  final TRes Function(Mutation$carUpdate) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? carUpdate = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$carUpdate(
        carUpdate: carUpdate == _undefined || carUpdate == null
            ? _instance.carUpdate
            : (carUpdate as Mutation$carUpdate$carUpdate),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$carUpdate$carUpdate<TRes> get carUpdate {
    final local$carUpdate = _instance.carUpdate;
    return CopyWith$Mutation$carUpdate$carUpdate(
        local$carUpdate, (e) => call(carUpdate: e));
  }
}

class _CopyWithStubImpl$Mutation$carUpdate<TRes>
    implements CopyWith$Mutation$carUpdate<TRes> {
  _CopyWithStubImpl$Mutation$carUpdate(this._res);

  TRes _res;

  call({
    Mutation$carUpdate$carUpdate? carUpdate,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$carUpdate$carUpdate<TRes> get carUpdate =>
      CopyWith$Mutation$carUpdate$carUpdate.stub(_res);
}

const documentNodeMutationcarUpdate = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'carUpdate'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'CarUpdateInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'carUpdate'),
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
            name: NameNode(value: 'car'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'CarDetail'),
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
  fragmentDefinitionCarDetail,
  fragmentDefinitionCarList,
  fragmentDefinitionUserFragment,
  fragmentDefinitionPositionDetail,
  fragmentDefinitionLocation,
  fragmentDefinitionPhotoDetail,
  fragmentDefinitionErrorDetail,
]);
Mutation$carUpdate _parserFn$Mutation$carUpdate(Map<String, dynamic> data) =>
    Mutation$carUpdate.fromJson(data);
typedef OnMutationCompleted$Mutation$carUpdate = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$carUpdate?,
);

class Options$Mutation$carUpdate
    extends graphql.MutationOptions<Mutation$carUpdate> {
  Options$Mutation$carUpdate({
    String? operationName,
    required Variables$Mutation$carUpdate variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$carUpdate? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$carUpdate? onCompleted,
    graphql.OnMutationUpdate<Mutation$carUpdate>? update,
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
                    data == null ? null : _parserFn$Mutation$carUpdate(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationcarUpdate,
          parserFn: _parserFn$Mutation$carUpdate,
        );

  final OnMutationCompleted$Mutation$carUpdate? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$carUpdate
    extends graphql.WatchQueryOptions<Mutation$carUpdate> {
  WatchOptions$Mutation$carUpdate({
    String? operationName,
    required Variables$Mutation$carUpdate variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$carUpdate? typedOptimisticResult,
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
          document: documentNodeMutationcarUpdate,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$carUpdate,
        );
}

extension ClientExtension$Mutation$carUpdate on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$carUpdate>> mutate$carUpdate(
          Options$Mutation$carUpdate options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$carUpdate> watchMutation$carUpdate(
          WatchOptions$Mutation$carUpdate options) =>
      this.watchMutation(options);
}

class Mutation$carUpdate$carUpdate {
  Mutation$carUpdate$carUpdate({
    this.car,
    required this.errors,
    this.$__typename = 'CarPayload',
  });

  factory Mutation$carUpdate$carUpdate.fromJson(Map<String, dynamic> json) {
    final l$car = json['car'];
    final l$errors = json['errors'];
    final l$$__typename = json['__typename'];
    return Mutation$carUpdate$carUpdate(
      car: l$car == null
          ? null
          : Fragment$CarDetail.fromJson((l$car as Map<String, dynamic>)),
      errors: (l$errors as List<dynamic>)
          .map(
              (e) => Fragment$ErrorDetail.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$CarDetail? car;

  final List<Fragment$ErrorDetail> errors;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$car = car;
    _resultData['car'] = l$car?.toJson();
    final l$errors = errors;
    _resultData['errors'] = l$errors.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$car = car;
    final l$errors = errors;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$car,
      Object.hashAll(l$errors.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$carUpdate$carUpdate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$car = car;
    final lOther$car = other.car;
    if (l$car != lOther$car) {
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

extension UtilityExtension$Mutation$carUpdate$carUpdate
    on Mutation$carUpdate$carUpdate {
  CopyWith$Mutation$carUpdate$carUpdate<Mutation$carUpdate$carUpdate>
      get copyWith => CopyWith$Mutation$carUpdate$carUpdate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$carUpdate$carUpdate<TRes> {
  factory CopyWith$Mutation$carUpdate$carUpdate(
    Mutation$carUpdate$carUpdate instance,
    TRes Function(Mutation$carUpdate$carUpdate) then,
  ) = _CopyWithImpl$Mutation$carUpdate$carUpdate;

  factory CopyWith$Mutation$carUpdate$carUpdate.stub(TRes res) =
      _CopyWithStubImpl$Mutation$carUpdate$carUpdate;

  TRes call({
    Fragment$CarDetail? car,
    List<Fragment$ErrorDetail>? errors,
    String? $__typename,
  });
  CopyWith$Fragment$CarDetail<TRes> get car;
  TRes errors(
      Iterable<Fragment$ErrorDetail> Function(
              Iterable<CopyWith$Fragment$ErrorDetail<Fragment$ErrorDetail>>)
          _fn);
}

class _CopyWithImpl$Mutation$carUpdate$carUpdate<TRes>
    implements CopyWith$Mutation$carUpdate$carUpdate<TRes> {
  _CopyWithImpl$Mutation$carUpdate$carUpdate(
    this._instance,
    this._then,
  );

  final Mutation$carUpdate$carUpdate _instance;

  final TRes Function(Mutation$carUpdate$carUpdate) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? car = _undefined,
    Object? errors = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$carUpdate$carUpdate(
        car: car == _undefined ? _instance.car : (car as Fragment$CarDetail?),
        errors: errors == _undefined || errors == null
            ? _instance.errors
            : (errors as List<Fragment$ErrorDetail>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$CarDetail<TRes> get car {
    final local$car = _instance.car;
    return local$car == null
        ? CopyWith$Fragment$CarDetail.stub(_then(_instance))
        : CopyWith$Fragment$CarDetail(local$car, (e) => call(car: e));
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

class _CopyWithStubImpl$Mutation$carUpdate$carUpdate<TRes>
    implements CopyWith$Mutation$carUpdate$carUpdate<TRes> {
  _CopyWithStubImpl$Mutation$carUpdate$carUpdate(this._res);

  TRes _res;

  call({
    Fragment$CarDetail? car,
    List<Fragment$ErrorDetail>? errors,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$CarDetail<TRes> get car =>
      CopyWith$Fragment$CarDetail.stub(_res);
  errors(_fn) => _res;
}
