import '../../fragments.graphql.dart';
import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Query$home {
  Query$home({
    required this.carList,
    this.$__typename = 'Query',
  });

  factory Query$home.fromJson(Map<String, dynamic> json) {
    final l$carList = json['carList'];
    final l$$__typename = json['__typename'];
    return Query$home(
      carList: (l$carList as List<dynamic>)
          .map((e) => Query$home$carList.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$home$carList> carList;

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
    if (!(other is Query$home) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$home on Query$home {
  CopyWith$Query$home<Query$home> get copyWith => CopyWith$Query$home(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$home<TRes> {
  factory CopyWith$Query$home(
    Query$home instance,
    TRes Function(Query$home) then,
  ) = _CopyWithImpl$Query$home;

  factory CopyWith$Query$home.stub(TRes res) = _CopyWithStubImpl$Query$home;

  TRes call({
    List<Query$home$carList>? carList,
    String? $__typename,
  });
  TRes carList(
      Iterable<Query$home$carList> Function(
              Iterable<CopyWith$Query$home$carList<Query$home$carList>>)
          _fn);
}

class _CopyWithImpl$Query$home<TRes> implements CopyWith$Query$home<TRes> {
  _CopyWithImpl$Query$home(
    this._instance,
    this._then,
  );

  final Query$home _instance;

  final TRes Function(Query$home) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? carList = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$home(
        carList: carList == _undefined || carList == null
            ? _instance.carList
            : (carList as List<Query$home$carList>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes carList(
          Iterable<Query$home$carList> Function(
                  Iterable<CopyWith$Query$home$carList<Query$home$carList>>)
              _fn) =>
      call(
          carList: _fn(_instance.carList.map((e) => CopyWith$Query$home$carList(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$home<TRes> implements CopyWith$Query$home<TRes> {
  _CopyWithStubImpl$Query$home(this._res);

  TRes _res;

  call({
    List<Query$home$carList>? carList,
    String? $__typename,
  }) =>
      _res;
  carList(_fn) => _res;
}

const documentNodeQueryhome = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'home'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'carList'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'lastPosition'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'location'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'Location'),
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
                name: NameNode(value: 'parkedBy'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'UserFragment'),
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
                name: NameNode(value: 'createdAt'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'photos'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'PhotoDetail'),
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
            name: NameNode(value: 'licencePlate'),
            alias: null,
            arguments: [],
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
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionLocation,
  fragmentDefinitionUserFragment,
  fragmentDefinitionPhotoDetail,
]);
Query$home _parserFn$Query$home(Map<String, dynamic> data) =>
    Query$home.fromJson(data);
typedef OnQueryComplete$Query$home = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$home?,
);

class Options$Query$home extends graphql.QueryOptions<Query$home> {
  Options$Query$home({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$home? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$home? onComplete,
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
                    data == null ? null : _parserFn$Query$home(data),
                  ),
          onError: onError,
          document: documentNodeQueryhome,
          parserFn: _parserFn$Query$home,
        );

  final OnQueryComplete$Query$home? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$home extends graphql.WatchQueryOptions<Query$home> {
  WatchOptions$Query$home({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$home? typedOptimisticResult,
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
          document: documentNodeQueryhome,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$home,
        );
}

class FetchMoreOptions$Query$home extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$home({required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryhome,
        );
}

extension ClientExtension$Query$home on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$home>> query$home(
          [Options$Query$home? options]) async =>
      await this.query(options ?? Options$Query$home());
  graphql.ObservableQuery<Query$home> watchQuery$home(
          [WatchOptions$Query$home? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$home());
  void writeQuery$home({
    required Query$home data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation: graphql.Operation(document: documentNodeQueryhome)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$home? readQuery$home({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryhome)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$home.fromJson(result);
  }
}

class Query$home$carList {
  Query$home$carList({
    required this.id,
    this.lastPosition,
    required this.licencePlate,
    this.$__typename = 'Car',
  });

  factory Query$home$carList.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$lastPosition = json['lastPosition'];
    final l$licencePlate = json['licencePlate'];
    final l$$__typename = json['__typename'];
    return Query$home$carList(
      id: (l$id as String),
      lastPosition: l$lastPosition == null
          ? null
          : Query$home$carList$lastPosition.fromJson(
              (l$lastPosition as Map<String, dynamic>)),
      licencePlate: (l$licencePlate as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final Query$home$carList$lastPosition? lastPosition;

  final String licencePlate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$lastPosition = lastPosition;
    _resultData['lastPosition'] = l$lastPosition?.toJson();
    final l$licencePlate = licencePlate;
    _resultData['licencePlate'] = l$licencePlate;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$lastPosition = lastPosition;
    final l$licencePlate = licencePlate;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$lastPosition,
      l$licencePlate,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$home$carList) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$lastPosition = lastPosition;
    final lOther$lastPosition = other.lastPosition;
    if (l$lastPosition != lOther$lastPosition) {
      return false;
    }
    final l$licencePlate = licencePlate;
    final lOther$licencePlate = other.licencePlate;
    if (l$licencePlate != lOther$licencePlate) {
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

extension UtilityExtension$Query$home$carList on Query$home$carList {
  CopyWith$Query$home$carList<Query$home$carList> get copyWith =>
      CopyWith$Query$home$carList(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$home$carList<TRes> {
  factory CopyWith$Query$home$carList(
    Query$home$carList instance,
    TRes Function(Query$home$carList) then,
  ) = _CopyWithImpl$Query$home$carList;

  factory CopyWith$Query$home$carList.stub(TRes res) =
      _CopyWithStubImpl$Query$home$carList;

  TRes call({
    String? id,
    Query$home$carList$lastPosition? lastPosition,
    String? licencePlate,
    String? $__typename,
  });
  CopyWith$Query$home$carList$lastPosition<TRes> get lastPosition;
}

class _CopyWithImpl$Query$home$carList<TRes>
    implements CopyWith$Query$home$carList<TRes> {
  _CopyWithImpl$Query$home$carList(
    this._instance,
    this._then,
  );

  final Query$home$carList _instance;

  final TRes Function(Query$home$carList) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? lastPosition = _undefined,
    Object? licencePlate = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$home$carList(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        lastPosition: lastPosition == _undefined
            ? _instance.lastPosition
            : (lastPosition as Query$home$carList$lastPosition?),
        licencePlate: licencePlate == _undefined || licencePlate == null
            ? _instance.licencePlate
            : (licencePlate as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$home$carList$lastPosition<TRes> get lastPosition {
    final local$lastPosition = _instance.lastPosition;
    return local$lastPosition == null
        ? CopyWith$Query$home$carList$lastPosition.stub(_then(_instance))
        : CopyWith$Query$home$carList$lastPosition(
            local$lastPosition, (e) => call(lastPosition: e));
  }
}

class _CopyWithStubImpl$Query$home$carList<TRes>
    implements CopyWith$Query$home$carList<TRes> {
  _CopyWithStubImpl$Query$home$carList(this._res);

  TRes _res;

  call({
    String? id,
    Query$home$carList$lastPosition? lastPosition,
    String? licencePlate,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$home$carList$lastPosition<TRes> get lastPosition =>
      CopyWith$Query$home$carList$lastPosition.stub(_res);
}

class Query$home$carList$lastPosition {
  Query$home$carList$lastPosition({
    required this.id,
    required this.location,
    required this.parkedBy,
    required this.createdAt,
    this.photos,
    this.$__typename = 'PositionHistory',
  });

  factory Query$home$carList$lastPosition.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$location = json['location'];
    final l$parkedBy = json['parkedBy'];
    final l$createdAt = json['createdAt'];
    final l$photos = json['photos'];
    final l$$__typename = json['__typename'];
    return Query$home$carList$lastPosition(
      id: (l$id as String),
      location:
          Fragment$Location.fromJson((l$location as Map<String, dynamic>)),
      parkedBy:
          Fragment$UserFragment.fromJson((l$parkedBy as Map<String, dynamic>)),
      createdAt: DateTime.parse((l$createdAt as String)),
      photos: (l$photos as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$PhotoDetail.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final Fragment$Location location;

  final Fragment$UserFragment parkedBy;

  final DateTime createdAt;

  final List<Fragment$PhotoDetail?>? photos;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$location = location;
    _resultData['location'] = l$location.toJson();
    final l$parkedBy = parkedBy;
    _resultData['parkedBy'] = l$parkedBy.toJson();
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt.toIso8601String();
    final l$photos = photos;
    _resultData['photos'] = l$photos?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$location = location;
    final l$parkedBy = parkedBy;
    final l$createdAt = createdAt;
    final l$photos = photos;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$location,
      l$parkedBy,
      l$createdAt,
      l$photos == null ? null : Object.hashAll(l$photos.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$home$carList$lastPosition) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$location = location;
    final lOther$location = other.location;
    if (l$location != lOther$location) {
      return false;
    }
    final l$parkedBy = parkedBy;
    final lOther$parkedBy = other.parkedBy;
    if (l$parkedBy != lOther$parkedBy) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$photos = photos;
    final lOther$photos = other.photos;
    if (l$photos != null && lOther$photos != null) {
      if (l$photos.length != lOther$photos.length) {
        return false;
      }
      for (int i = 0; i < l$photos.length; i++) {
        final l$photos$entry = l$photos[i];
        final lOther$photos$entry = lOther$photos[i];
        if (l$photos$entry != lOther$photos$entry) {
          return false;
        }
      }
    } else if (l$photos != lOther$photos) {
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

extension UtilityExtension$Query$home$carList$lastPosition
    on Query$home$carList$lastPosition {
  CopyWith$Query$home$carList$lastPosition<Query$home$carList$lastPosition>
      get copyWith => CopyWith$Query$home$carList$lastPosition(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$home$carList$lastPosition<TRes> {
  factory CopyWith$Query$home$carList$lastPosition(
    Query$home$carList$lastPosition instance,
    TRes Function(Query$home$carList$lastPosition) then,
  ) = _CopyWithImpl$Query$home$carList$lastPosition;

  factory CopyWith$Query$home$carList$lastPosition.stub(TRes res) =
      _CopyWithStubImpl$Query$home$carList$lastPosition;

  TRes call({
    String? id,
    Fragment$Location? location,
    Fragment$UserFragment? parkedBy,
    DateTime? createdAt,
    List<Fragment$PhotoDetail?>? photos,
    String? $__typename,
  });
  CopyWith$Fragment$Location<TRes> get location;
  CopyWith$Fragment$UserFragment<TRes> get parkedBy;
  TRes photos(
      Iterable<Fragment$PhotoDetail?>? Function(
              Iterable<CopyWith$Fragment$PhotoDetail<Fragment$PhotoDetail>?>?)
          _fn);
}

class _CopyWithImpl$Query$home$carList$lastPosition<TRes>
    implements CopyWith$Query$home$carList$lastPosition<TRes> {
  _CopyWithImpl$Query$home$carList$lastPosition(
    this._instance,
    this._then,
  );

  final Query$home$carList$lastPosition _instance;

  final TRes Function(Query$home$carList$lastPosition) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? location = _undefined,
    Object? parkedBy = _undefined,
    Object? createdAt = _undefined,
    Object? photos = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$home$carList$lastPosition(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        location: location == _undefined || location == null
            ? _instance.location
            : (location as Fragment$Location),
        parkedBy: parkedBy == _undefined || parkedBy == null
            ? _instance.parkedBy
            : (parkedBy as Fragment$UserFragment),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as DateTime),
        photos: photos == _undefined
            ? _instance.photos
            : (photos as List<Fragment$PhotoDetail?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$Location<TRes> get location {
    final local$location = _instance.location;
    return CopyWith$Fragment$Location(local$location, (e) => call(location: e));
  }

  CopyWith$Fragment$UserFragment<TRes> get parkedBy {
    final local$parkedBy = _instance.parkedBy;
    return CopyWith$Fragment$UserFragment(
        local$parkedBy, (e) => call(parkedBy: e));
  }

  TRes photos(
          Iterable<Fragment$PhotoDetail?>? Function(
                  Iterable<
                      CopyWith$Fragment$PhotoDetail<Fragment$PhotoDetail>?>?)
              _fn) =>
      call(
          photos: _fn(_instance.photos?.map((e) => e == null
              ? null
              : CopyWith$Fragment$PhotoDetail(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$home$carList$lastPosition<TRes>
    implements CopyWith$Query$home$carList$lastPosition<TRes> {
  _CopyWithStubImpl$Query$home$carList$lastPosition(this._res);

  TRes _res;

  call({
    String? id,
    Fragment$Location? location,
    Fragment$UserFragment? parkedBy,
    DateTime? createdAt,
    List<Fragment$PhotoDetail?>? photos,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$Location<TRes> get location =>
      CopyWith$Fragment$Location.stub(_res);
  CopyWith$Fragment$UserFragment<TRes> get parkedBy =>
      CopyWith$Fragment$UserFragment.stub(_res);
  photos(_fn) => _res;
}
