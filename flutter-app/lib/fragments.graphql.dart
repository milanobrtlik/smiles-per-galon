import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:whereisourcar/custom_graphql_scalars.dart';
import 'schema.graphql.dart';

class Fragment$ErrorDetail {
  Fragment$ErrorDetail({
    this.message,
    required this.code,
    this.$__typename = 'UserError',
  });

  factory Fragment$ErrorDetail.fromJson(Map<String, dynamic> json) {
    final l$message = json['message'];
    final l$code = json['code'];
    final l$$__typename = json['__typename'];
    return Fragment$ErrorDetail(
      message: (l$message as String?),
      code: (l$code as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String? message;

  final String code;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$message = message;
    _resultData['message'] = l$message;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$message = message;
    final l$code = code;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$message,
      l$code,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$ErrorDetail) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
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

extension UtilityExtension$Fragment$ErrorDetail on Fragment$ErrorDetail {
  CopyWith$Fragment$ErrorDetail<Fragment$ErrorDetail> get copyWith =>
      CopyWith$Fragment$ErrorDetail(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$ErrorDetail<TRes> {
  factory CopyWith$Fragment$ErrorDetail(
    Fragment$ErrorDetail instance,
    TRes Function(Fragment$ErrorDetail) then,
  ) = _CopyWithImpl$Fragment$ErrorDetail;

  factory CopyWith$Fragment$ErrorDetail.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ErrorDetail;

  TRes call({
    String? message,
    String? code,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$ErrorDetail<TRes>
    implements CopyWith$Fragment$ErrorDetail<TRes> {
  _CopyWithImpl$Fragment$ErrorDetail(
    this._instance,
    this._then,
  );

  final Fragment$ErrorDetail _instance;

  final TRes Function(Fragment$ErrorDetail) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? message = _undefined,
    Object? code = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$ErrorDetail(
        message:
            message == _undefined ? _instance.message : (message as String?),
        code: code == _undefined || code == null
            ? _instance.code
            : (code as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$ErrorDetail<TRes>
    implements CopyWith$Fragment$ErrorDetail<TRes> {
  _CopyWithStubImpl$Fragment$ErrorDetail(this._res);

  TRes _res;

  call({
    String? message,
    String? code,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionErrorDetail = FragmentDefinitionNode(
  name: NameNode(value: 'ErrorDetail'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'UserError'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'message'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'code'),
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
);
const documentNodeFragmentErrorDetail = DocumentNode(definitions: [
  fragmentDefinitionErrorDetail,
]);

extension ClientExtension$Fragment$ErrorDetail on graphql.GraphQLClient {
  void writeFragment$ErrorDetail({
    required Fragment$ErrorDetail data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'ErrorDetail',
            document: documentNodeFragmentErrorDetail,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$ErrorDetail? readFragment$ErrorDetail({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'ErrorDetail',
          document: documentNodeFragmentErrorDetail,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$ErrorDetail.fromJson(result);
  }
}

class Fragment$Location {
  Fragment$Location({
    required this.bbox,
    this.coordinates,
    required this.crs,
    required this.type,
    this.$__typename = 'GeoJSONPointType',
  });

  factory Fragment$Location.fromJson(Map<String, dynamic> json) {
    final l$bbox = json['bbox'];
    final l$coordinates = json['coordinates'];
    final l$crs = json['crs'];
    final l$type = json['type'];
    final l$$__typename = json['__typename'];
    return Fragment$Location(
      bbox:
          (l$bbox as List<dynamic>).map((e) => (e as num).toDouble()).toList(),
      coordinates:
          l$coordinates == null ? null : customPositionFromJson(l$coordinates),
      crs: (l$crs as int),
      type: fromJson$Enum$GeoJSONGeometryType((l$type as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final List<double> bbox;

  final Position? coordinates;

  final int crs;

  final Enum$GeoJSONGeometryType type;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$bbox = bbox;
    _resultData['bbox'] = l$bbox.map((e) => e).toList();
    final l$coordinates = coordinates;
    _resultData['coordinates'] =
        l$coordinates == null ? null : customPositionToJson(l$coordinates);
    final l$crs = crs;
    _resultData['crs'] = l$crs;
    final l$type = type;
    _resultData['type'] = toJson$Enum$GeoJSONGeometryType(l$type);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$bbox = bbox;
    final l$coordinates = coordinates;
    final l$crs = crs;
    final l$type = type;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$bbox.map((v) => v)),
      l$coordinates,
      l$crs,
      l$type,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$Location) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$bbox = bbox;
    final lOther$bbox = other.bbox;
    if (l$bbox.length != lOther$bbox.length) {
      return false;
    }
    for (int i = 0; i < l$bbox.length; i++) {
      final l$bbox$entry = l$bbox[i];
      final lOther$bbox$entry = lOther$bbox[i];
      if (l$bbox$entry != lOther$bbox$entry) {
        return false;
      }
    }
    final l$coordinates = coordinates;
    final lOther$coordinates = other.coordinates;
    if (l$coordinates != lOther$coordinates) {
      return false;
    }
    final l$crs = crs;
    final lOther$crs = other.crs;
    if (l$crs != lOther$crs) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
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

extension UtilityExtension$Fragment$Location on Fragment$Location {
  CopyWith$Fragment$Location<Fragment$Location> get copyWith =>
      CopyWith$Fragment$Location(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$Location<TRes> {
  factory CopyWith$Fragment$Location(
    Fragment$Location instance,
    TRes Function(Fragment$Location) then,
  ) = _CopyWithImpl$Fragment$Location;

  factory CopyWith$Fragment$Location.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Location;

  TRes call({
    List<double>? bbox,
    Position? coordinates,
    int? crs,
    Enum$GeoJSONGeometryType? type,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$Location<TRes>
    implements CopyWith$Fragment$Location<TRes> {
  _CopyWithImpl$Fragment$Location(
    this._instance,
    this._then,
  );

  final Fragment$Location _instance;

  final TRes Function(Fragment$Location) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? bbox = _undefined,
    Object? coordinates = _undefined,
    Object? crs = _undefined,
    Object? type = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Location(
        bbox: bbox == _undefined || bbox == null
            ? _instance.bbox
            : (bbox as List<double>),
        coordinates: coordinates == _undefined
            ? _instance.coordinates
            : (coordinates as Position?),
        crs: crs == _undefined || crs == null ? _instance.crs : (crs as int),
        type: type == _undefined || type == null
            ? _instance.type
            : (type as Enum$GeoJSONGeometryType),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$Location<TRes>
    implements CopyWith$Fragment$Location<TRes> {
  _CopyWithStubImpl$Fragment$Location(this._res);

  TRes _res;

  call({
    List<double>? bbox,
    Position? coordinates,
    int? crs,
    Enum$GeoJSONGeometryType? type,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionLocation = FragmentDefinitionNode(
  name: NameNode(value: 'Location'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'GeoJSONPointType'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'bbox'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'coordinates'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'crs'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'type'),
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
);
const documentNodeFragmentLocation = DocumentNode(definitions: [
  fragmentDefinitionLocation,
]);

extension ClientExtension$Fragment$Location on graphql.GraphQLClient {
  void writeFragment$Location({
    required Fragment$Location data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'Location',
            document: documentNodeFragmentLocation,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$Location? readFragment$Location({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'Location',
          document: documentNodeFragmentLocation,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$Location.fromJson(result);
  }
}

class Fragment$UserFragment {
  Fragment$UserFragment({
    required this.id,
    this.name,
    this.avatarUrl,
    this.$__typename = 'User',
  });

  factory Fragment$UserFragment.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$avatarUrl = json['avatarUrl'];
    final l$$__typename = json['__typename'];
    return Fragment$UserFragment(
      id: (l$id as String),
      name: (l$name as String?),
      avatarUrl: (l$avatarUrl as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? name;

  final String? avatarUrl;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$avatarUrl = avatarUrl;
    _resultData['avatarUrl'] = l$avatarUrl;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$avatarUrl = avatarUrl;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$avatarUrl,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$UserFragment) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$avatarUrl = avatarUrl;
    final lOther$avatarUrl = other.avatarUrl;
    if (l$avatarUrl != lOther$avatarUrl) {
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

extension UtilityExtension$Fragment$UserFragment on Fragment$UserFragment {
  CopyWith$Fragment$UserFragment<Fragment$UserFragment> get copyWith =>
      CopyWith$Fragment$UserFragment(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$UserFragment<TRes> {
  factory CopyWith$Fragment$UserFragment(
    Fragment$UserFragment instance,
    TRes Function(Fragment$UserFragment) then,
  ) = _CopyWithImpl$Fragment$UserFragment;

  factory CopyWith$Fragment$UserFragment.stub(TRes res) =
      _CopyWithStubImpl$Fragment$UserFragment;

  TRes call({
    String? id,
    String? name,
    String? avatarUrl,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$UserFragment<TRes>
    implements CopyWith$Fragment$UserFragment<TRes> {
  _CopyWithImpl$Fragment$UserFragment(
    this._instance,
    this._then,
  );

  final Fragment$UserFragment _instance;

  final TRes Function(Fragment$UserFragment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? avatarUrl = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$UserFragment(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined ? _instance.name : (name as String?),
        avatarUrl: avatarUrl == _undefined
            ? _instance.avatarUrl
            : (avatarUrl as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$UserFragment<TRes>
    implements CopyWith$Fragment$UserFragment<TRes> {
  _CopyWithStubImpl$Fragment$UserFragment(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? avatarUrl,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionUserFragment = FragmentDefinitionNode(
  name: NameNode(value: 'UserFragment'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'User'),
    isNonNull: false,
  )),
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
      name: NameNode(value: 'name'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'avatarUrl'),
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
);
const documentNodeFragmentUserFragment = DocumentNode(definitions: [
  fragmentDefinitionUserFragment,
]);

extension ClientExtension$Fragment$UserFragment on graphql.GraphQLClient {
  void writeFragment$UserFragment({
    required Fragment$UserFragment data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'UserFragment',
            document: documentNodeFragmentUserFragment,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$UserFragment? readFragment$UserFragment({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'UserFragment',
          document: documentNodeFragmentUserFragment,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$UserFragment.fromJson(result);
  }
}

class Fragment$MeFragment implements Fragment$UserFragment {
  Fragment$MeFragment({
    required this.id,
    this.name,
    this.avatarUrl,
    this.$__typename = 'User',
    required this.email,
  });

  factory Fragment$MeFragment.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$avatarUrl = json['avatarUrl'];
    final l$$__typename = json['__typename'];
    final l$email = json['email'];
    return Fragment$MeFragment(
      id: (l$id as String),
      name: (l$name as String?),
      avatarUrl: (l$avatarUrl as String?),
      $__typename: (l$$__typename as String),
      email: (l$email as String),
    );
  }

  final String id;

  final String? name;

  final String? avatarUrl;

  final String $__typename;

  final String email;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$avatarUrl = avatarUrl;
    _resultData['avatarUrl'] = l$avatarUrl;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$email = email;
    _resultData['email'] = l$email;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$avatarUrl = avatarUrl;
    final l$$__typename = $__typename;
    final l$email = email;
    return Object.hashAll([
      l$id,
      l$name,
      l$avatarUrl,
      l$$__typename,
      l$email,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$MeFragment) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$avatarUrl = avatarUrl;
    final lOther$avatarUrl = other.avatarUrl;
    if (l$avatarUrl != lOther$avatarUrl) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$MeFragment on Fragment$MeFragment {
  CopyWith$Fragment$MeFragment<Fragment$MeFragment> get copyWith =>
      CopyWith$Fragment$MeFragment(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$MeFragment<TRes> {
  factory CopyWith$Fragment$MeFragment(
    Fragment$MeFragment instance,
    TRes Function(Fragment$MeFragment) then,
  ) = _CopyWithImpl$Fragment$MeFragment;

  factory CopyWith$Fragment$MeFragment.stub(TRes res) =
      _CopyWithStubImpl$Fragment$MeFragment;

  TRes call({
    String? id,
    String? name,
    String? avatarUrl,
    String? $__typename,
    String? email,
  });
}

class _CopyWithImpl$Fragment$MeFragment<TRes>
    implements CopyWith$Fragment$MeFragment<TRes> {
  _CopyWithImpl$Fragment$MeFragment(
    this._instance,
    this._then,
  );

  final Fragment$MeFragment _instance;

  final TRes Function(Fragment$MeFragment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? avatarUrl = _undefined,
    Object? $__typename = _undefined,
    Object? email = _undefined,
  }) =>
      _then(Fragment$MeFragment(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined ? _instance.name : (name as String?),
        avatarUrl: avatarUrl == _undefined
            ? _instance.avatarUrl
            : (avatarUrl as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        email: email == _undefined || email == null
            ? _instance.email
            : (email as String),
      ));
}

class _CopyWithStubImpl$Fragment$MeFragment<TRes>
    implements CopyWith$Fragment$MeFragment<TRes> {
  _CopyWithStubImpl$Fragment$MeFragment(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? avatarUrl,
    String? $__typename,
    String? email,
  }) =>
      _res;
}

const fragmentDefinitionMeFragment = FragmentDefinitionNode(
  name: NameNode(value: 'MeFragment'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'User'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FragmentSpreadNode(
      name: NameNode(value: 'UserFragment'),
      directives: [],
    ),
    FieldNode(
      name: NameNode(value: 'email'),
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
);
const documentNodeFragmentMeFragment = DocumentNode(definitions: [
  fragmentDefinitionMeFragment,
  fragmentDefinitionUserFragment,
]);

extension ClientExtension$Fragment$MeFragment on graphql.GraphQLClient {
  void writeFragment$MeFragment({
    required Fragment$MeFragment data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'MeFragment',
            document: documentNodeFragmentMeFragment,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$MeFragment? readFragment$MeFragment({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'MeFragment',
          document: documentNodeFragmentMeFragment,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$MeFragment.fromJson(result);
  }
}

class Fragment$CarList {
  Fragment$CarList({
    required this.id,
    required this.licencePlate,
    this.users,
    this.$__typename = 'Car',
  });

  factory Fragment$CarList.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$licencePlate = json['licencePlate'];
    final l$users = json['users'];
    final l$$__typename = json['__typename'];
    return Fragment$CarList(
      id: (l$id as String),
      licencePlate: (l$licencePlate as String),
      users: (l$users as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$UserFragment.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String licencePlate;

  final List<Fragment$UserFragment?>? users;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$licencePlate = licencePlate;
    _resultData['licencePlate'] = l$licencePlate;
    final l$users = users;
    _resultData['users'] = l$users?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$licencePlate = licencePlate;
    final l$users = users;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$licencePlate,
      l$users == null ? null : Object.hashAll(l$users.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$CarList) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$licencePlate = licencePlate;
    final lOther$licencePlate = other.licencePlate;
    if (l$licencePlate != lOther$licencePlate) {
      return false;
    }
    final l$users = users;
    final lOther$users = other.users;
    if (l$users != null && lOther$users != null) {
      if (l$users.length != lOther$users.length) {
        return false;
      }
      for (int i = 0; i < l$users.length; i++) {
        final l$users$entry = l$users[i];
        final lOther$users$entry = lOther$users[i];
        if (l$users$entry != lOther$users$entry) {
          return false;
        }
      }
    } else if (l$users != lOther$users) {
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

extension UtilityExtension$Fragment$CarList on Fragment$CarList {
  CopyWith$Fragment$CarList<Fragment$CarList> get copyWith =>
      CopyWith$Fragment$CarList(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$CarList<TRes> {
  factory CopyWith$Fragment$CarList(
    Fragment$CarList instance,
    TRes Function(Fragment$CarList) then,
  ) = _CopyWithImpl$Fragment$CarList;

  factory CopyWith$Fragment$CarList.stub(TRes res) =
      _CopyWithStubImpl$Fragment$CarList;

  TRes call({
    String? id,
    String? licencePlate,
    List<Fragment$UserFragment?>? users,
    String? $__typename,
  });
  TRes users(
      Iterable<Fragment$UserFragment?>? Function(
              Iterable<CopyWith$Fragment$UserFragment<Fragment$UserFragment>?>?)
          _fn);
}

class _CopyWithImpl$Fragment$CarList<TRes>
    implements CopyWith$Fragment$CarList<TRes> {
  _CopyWithImpl$Fragment$CarList(
    this._instance,
    this._then,
  );

  final Fragment$CarList _instance;

  final TRes Function(Fragment$CarList) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? licencePlate = _undefined,
    Object? users = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$CarList(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        licencePlate: licencePlate == _undefined || licencePlate == null
            ? _instance.licencePlate
            : (licencePlate as String),
        users: users == _undefined
            ? _instance.users
            : (users as List<Fragment$UserFragment?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes users(
          Iterable<Fragment$UserFragment?>? Function(
                  Iterable<
                      CopyWith$Fragment$UserFragment<Fragment$UserFragment>?>?)
              _fn) =>
      call(
          users: _fn(_instance.users?.map((e) => e == null
              ? null
              : CopyWith$Fragment$UserFragment(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Fragment$CarList<TRes>
    implements CopyWith$Fragment$CarList<TRes> {
  _CopyWithStubImpl$Fragment$CarList(this._res);

  TRes _res;

  call({
    String? id,
    String? licencePlate,
    List<Fragment$UserFragment?>? users,
    String? $__typename,
  }) =>
      _res;
  users(_fn) => _res;
}

const fragmentDefinitionCarList = FragmentDefinitionNode(
  name: NameNode(value: 'CarList'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Car'),
    isNonNull: false,
  )),
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
      name: NameNode(value: 'licencePlate'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'users'),
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
      name: NameNode(value: '__typename'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
  ]),
);
const documentNodeFragmentCarList = DocumentNode(definitions: [
  fragmentDefinitionCarList,
  fragmentDefinitionUserFragment,
]);

extension ClientExtension$Fragment$CarList on graphql.GraphQLClient {
  void writeFragment$CarList({
    required Fragment$CarList data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'CarList',
            document: documentNodeFragmentCarList,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$CarList? readFragment$CarList({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'CarList',
          document: documentNodeFragmentCarList,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$CarList.fromJson(result);
  }
}

class Fragment$PositionDetail {
  Fragment$PositionDetail({
    required this.id,
    required this.createdAt,
    required this.parkedBy,
    required this.location,
    this.photos,
    this.$__typename = 'PositionHistory',
  });

  factory Fragment$PositionDetail.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$createdAt = json['createdAt'];
    final l$parkedBy = json['parkedBy'];
    final l$location = json['location'];
    final l$photos = json['photos'];
    final l$$__typename = json['__typename'];
    return Fragment$PositionDetail(
      id: (l$id as String),
      createdAt: DateTime.parse((l$createdAt as String)),
      parkedBy:
          Fragment$UserFragment.fromJson((l$parkedBy as Map<String, dynamic>)),
      location:
          Fragment$Location.fromJson((l$location as Map<String, dynamic>)),
      photos: (l$photos as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$PhotoDetail.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final DateTime createdAt;

  final Fragment$UserFragment parkedBy;

  final Fragment$Location location;

  final List<Fragment$PhotoDetail?>? photos;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt.toIso8601String();
    final l$parkedBy = parkedBy;
    _resultData['parkedBy'] = l$parkedBy.toJson();
    final l$location = location;
    _resultData['location'] = l$location.toJson();
    final l$photos = photos;
    _resultData['photos'] = l$photos?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$createdAt = createdAt;
    final l$parkedBy = parkedBy;
    final l$location = location;
    final l$photos = photos;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$createdAt,
      l$parkedBy,
      l$location,
      l$photos == null ? null : Object.hashAll(l$photos.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$PositionDetail) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$parkedBy = parkedBy;
    final lOther$parkedBy = other.parkedBy;
    if (l$parkedBy != lOther$parkedBy) {
      return false;
    }
    final l$location = location;
    final lOther$location = other.location;
    if (l$location != lOther$location) {
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

extension UtilityExtension$Fragment$PositionDetail on Fragment$PositionDetail {
  CopyWith$Fragment$PositionDetail<Fragment$PositionDetail> get copyWith =>
      CopyWith$Fragment$PositionDetail(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$PositionDetail<TRes> {
  factory CopyWith$Fragment$PositionDetail(
    Fragment$PositionDetail instance,
    TRes Function(Fragment$PositionDetail) then,
  ) = _CopyWithImpl$Fragment$PositionDetail;

  factory CopyWith$Fragment$PositionDetail.stub(TRes res) =
      _CopyWithStubImpl$Fragment$PositionDetail;

  TRes call({
    String? id,
    DateTime? createdAt,
    Fragment$UserFragment? parkedBy,
    Fragment$Location? location,
    List<Fragment$PhotoDetail?>? photos,
    String? $__typename,
  });
  CopyWith$Fragment$UserFragment<TRes> get parkedBy;
  CopyWith$Fragment$Location<TRes> get location;
  TRes photos(
      Iterable<Fragment$PhotoDetail?>? Function(
              Iterable<CopyWith$Fragment$PhotoDetail<Fragment$PhotoDetail>?>?)
          _fn);
}

class _CopyWithImpl$Fragment$PositionDetail<TRes>
    implements CopyWith$Fragment$PositionDetail<TRes> {
  _CopyWithImpl$Fragment$PositionDetail(
    this._instance,
    this._then,
  );

  final Fragment$PositionDetail _instance;

  final TRes Function(Fragment$PositionDetail) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? createdAt = _undefined,
    Object? parkedBy = _undefined,
    Object? location = _undefined,
    Object? photos = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$PositionDetail(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as DateTime),
        parkedBy: parkedBy == _undefined || parkedBy == null
            ? _instance.parkedBy
            : (parkedBy as Fragment$UserFragment),
        location: location == _undefined || location == null
            ? _instance.location
            : (location as Fragment$Location),
        photos: photos == _undefined
            ? _instance.photos
            : (photos as List<Fragment$PhotoDetail?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$UserFragment<TRes> get parkedBy {
    final local$parkedBy = _instance.parkedBy;
    return CopyWith$Fragment$UserFragment(
        local$parkedBy, (e) => call(parkedBy: e));
  }

  CopyWith$Fragment$Location<TRes> get location {
    final local$location = _instance.location;
    return CopyWith$Fragment$Location(local$location, (e) => call(location: e));
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

class _CopyWithStubImpl$Fragment$PositionDetail<TRes>
    implements CopyWith$Fragment$PositionDetail<TRes> {
  _CopyWithStubImpl$Fragment$PositionDetail(this._res);

  TRes _res;

  call({
    String? id,
    DateTime? createdAt,
    Fragment$UserFragment? parkedBy,
    Fragment$Location? location,
    List<Fragment$PhotoDetail?>? photos,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$UserFragment<TRes> get parkedBy =>
      CopyWith$Fragment$UserFragment.stub(_res);
  CopyWith$Fragment$Location<TRes> get location =>
      CopyWith$Fragment$Location.stub(_res);
  photos(_fn) => _res;
}

const fragmentDefinitionPositionDetail = FragmentDefinitionNode(
  name: NameNode(value: 'PositionDetail'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'PositionHistory'),
    isNonNull: false,
  )),
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
      name: NameNode(value: 'createdAt'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
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
);
const documentNodeFragmentPositionDetail = DocumentNode(definitions: [
  fragmentDefinitionPositionDetail,
  fragmentDefinitionUserFragment,
  fragmentDefinitionLocation,
  fragmentDefinitionPhotoDetail,
]);

extension ClientExtension$Fragment$PositionDetail on graphql.GraphQLClient {
  void writeFragment$PositionDetail({
    required Fragment$PositionDetail data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'PositionDetail',
            document: documentNodeFragmentPositionDetail,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$PositionDetail? readFragment$PositionDetail({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'PositionDetail',
          document: documentNodeFragmentPositionDetail,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$PositionDetail.fromJson(result);
  }
}

class Fragment$CarDetail implements Fragment$CarList {
  Fragment$CarDetail({
    required this.id,
    required this.licencePlate,
    this.users,
    this.$__typename = 'Car',
    this.lastPosition,
  });

  factory Fragment$CarDetail.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$licencePlate = json['licencePlate'];
    final l$users = json['users'];
    final l$$__typename = json['__typename'];
    final l$lastPosition = json['lastPosition'];
    return Fragment$CarDetail(
      id: (l$id as String),
      licencePlate: (l$licencePlate as String),
      users: (l$users as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$UserFragment.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
      lastPosition: l$lastPosition == null
          ? null
          : Fragment$PositionDetail.fromJson(
              (l$lastPosition as Map<String, dynamic>)),
    );
  }

  final String id;

  final String licencePlate;

  final List<Fragment$UserFragment?>? users;

  final String $__typename;

  final Fragment$PositionDetail? lastPosition;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$licencePlate = licencePlate;
    _resultData['licencePlate'] = l$licencePlate;
    final l$users = users;
    _resultData['users'] = l$users?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$lastPosition = lastPosition;
    _resultData['lastPosition'] = l$lastPosition?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$licencePlate = licencePlate;
    final l$users = users;
    final l$$__typename = $__typename;
    final l$lastPosition = lastPosition;
    return Object.hashAll([
      l$id,
      l$licencePlate,
      l$users == null ? null : Object.hashAll(l$users.map((v) => v)),
      l$$__typename,
      l$lastPosition,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$CarDetail) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$licencePlate = licencePlate;
    final lOther$licencePlate = other.licencePlate;
    if (l$licencePlate != lOther$licencePlate) {
      return false;
    }
    final l$users = users;
    final lOther$users = other.users;
    if (l$users != null && lOther$users != null) {
      if (l$users.length != lOther$users.length) {
        return false;
      }
      for (int i = 0; i < l$users.length; i++) {
        final l$users$entry = l$users[i];
        final lOther$users$entry = lOther$users[i];
        if (l$users$entry != lOther$users$entry) {
          return false;
        }
      }
    } else if (l$users != lOther$users) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$lastPosition = lastPosition;
    final lOther$lastPosition = other.lastPosition;
    if (l$lastPosition != lOther$lastPosition) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$CarDetail on Fragment$CarDetail {
  CopyWith$Fragment$CarDetail<Fragment$CarDetail> get copyWith =>
      CopyWith$Fragment$CarDetail(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$CarDetail<TRes> {
  factory CopyWith$Fragment$CarDetail(
    Fragment$CarDetail instance,
    TRes Function(Fragment$CarDetail) then,
  ) = _CopyWithImpl$Fragment$CarDetail;

  factory CopyWith$Fragment$CarDetail.stub(TRes res) =
      _CopyWithStubImpl$Fragment$CarDetail;

  TRes call({
    String? id,
    String? licencePlate,
    List<Fragment$UserFragment?>? users,
    String? $__typename,
    Fragment$PositionDetail? lastPosition,
  });
  TRes users(
      Iterable<Fragment$UserFragment?>? Function(
              Iterable<CopyWith$Fragment$UserFragment<Fragment$UserFragment>?>?)
          _fn);
  CopyWith$Fragment$PositionDetail<TRes> get lastPosition;
}

class _CopyWithImpl$Fragment$CarDetail<TRes>
    implements CopyWith$Fragment$CarDetail<TRes> {
  _CopyWithImpl$Fragment$CarDetail(
    this._instance,
    this._then,
  );

  final Fragment$CarDetail _instance;

  final TRes Function(Fragment$CarDetail) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? licencePlate = _undefined,
    Object? users = _undefined,
    Object? $__typename = _undefined,
    Object? lastPosition = _undefined,
  }) =>
      _then(Fragment$CarDetail(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        licencePlate: licencePlate == _undefined || licencePlate == null
            ? _instance.licencePlate
            : (licencePlate as String),
        users: users == _undefined
            ? _instance.users
            : (users as List<Fragment$UserFragment?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        lastPosition: lastPosition == _undefined
            ? _instance.lastPosition
            : (lastPosition as Fragment$PositionDetail?),
      ));
  TRes users(
          Iterable<Fragment$UserFragment?>? Function(
                  Iterable<
                      CopyWith$Fragment$UserFragment<Fragment$UserFragment>?>?)
              _fn) =>
      call(
          users: _fn(_instance.users?.map((e) => e == null
              ? null
              : CopyWith$Fragment$UserFragment(
                  e,
                  (i) => i,
                )))?.toList());
  CopyWith$Fragment$PositionDetail<TRes> get lastPosition {
    final local$lastPosition = _instance.lastPosition;
    return local$lastPosition == null
        ? CopyWith$Fragment$PositionDetail.stub(_then(_instance))
        : CopyWith$Fragment$PositionDetail(
            local$lastPosition, (e) => call(lastPosition: e));
  }
}

class _CopyWithStubImpl$Fragment$CarDetail<TRes>
    implements CopyWith$Fragment$CarDetail<TRes> {
  _CopyWithStubImpl$Fragment$CarDetail(this._res);

  TRes _res;

  call({
    String? id,
    String? licencePlate,
    List<Fragment$UserFragment?>? users,
    String? $__typename,
    Fragment$PositionDetail? lastPosition,
  }) =>
      _res;
  users(_fn) => _res;
  CopyWith$Fragment$PositionDetail<TRes> get lastPosition =>
      CopyWith$Fragment$PositionDetail.stub(_res);
}

const fragmentDefinitionCarDetail = FragmentDefinitionNode(
  name: NameNode(value: 'CarDetail'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Car'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FragmentSpreadNode(
      name: NameNode(value: 'CarList'),
      directives: [],
    ),
    FieldNode(
      name: NameNode(value: 'lastPosition'),
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
      name: NameNode(value: '__typename'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
  ]),
);
const documentNodeFragmentCarDetail = DocumentNode(definitions: [
  fragmentDefinitionCarDetail,
  fragmentDefinitionCarList,
  fragmentDefinitionUserFragment,
  fragmentDefinitionPositionDetail,
  fragmentDefinitionLocation,
  fragmentDefinitionPhotoDetail,
]);

extension ClientExtension$Fragment$CarDetail on graphql.GraphQLClient {
  void writeFragment$CarDetail({
    required Fragment$CarDetail data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'CarDetail',
            document: documentNodeFragmentCarDetail,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$CarDetail? readFragment$CarDetail({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'CarDetail',
          document: documentNodeFragmentCarDetail,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$CarDetail.fromJson(result);
  }
}

class Fragment$PhotoDetail {
  Fragment$PhotoDetail({
    required this.id,
    required this.thumb,
    required this.full,
    this.$__typename = 'Photo',
  });

  factory Fragment$PhotoDetail.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$thumb = json['thumb'];
    final l$full = json['full'];
    final l$$__typename = json['__typename'];
    return Fragment$PhotoDetail(
      id: (l$id as String),
      thumb: (l$thumb as String),
      full: (l$full as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String thumb;

  final String full;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$thumb = thumb;
    _resultData['thumb'] = l$thumb;
    final l$full = full;
    _resultData['full'] = l$full;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$thumb = thumb;
    final l$full = full;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$thumb,
      l$full,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$PhotoDetail) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$thumb = thumb;
    final lOther$thumb = other.thumb;
    if (l$thumb != lOther$thumb) {
      return false;
    }
    final l$full = full;
    final lOther$full = other.full;
    if (l$full != lOther$full) {
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

extension UtilityExtension$Fragment$PhotoDetail on Fragment$PhotoDetail {
  CopyWith$Fragment$PhotoDetail<Fragment$PhotoDetail> get copyWith =>
      CopyWith$Fragment$PhotoDetail(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$PhotoDetail<TRes> {
  factory CopyWith$Fragment$PhotoDetail(
    Fragment$PhotoDetail instance,
    TRes Function(Fragment$PhotoDetail) then,
  ) = _CopyWithImpl$Fragment$PhotoDetail;

  factory CopyWith$Fragment$PhotoDetail.stub(TRes res) =
      _CopyWithStubImpl$Fragment$PhotoDetail;

  TRes call({
    String? id,
    String? thumb,
    String? full,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$PhotoDetail<TRes>
    implements CopyWith$Fragment$PhotoDetail<TRes> {
  _CopyWithImpl$Fragment$PhotoDetail(
    this._instance,
    this._then,
  );

  final Fragment$PhotoDetail _instance;

  final TRes Function(Fragment$PhotoDetail) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? thumb = _undefined,
    Object? full = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$PhotoDetail(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        thumb: thumb == _undefined || thumb == null
            ? _instance.thumb
            : (thumb as String),
        full: full == _undefined || full == null
            ? _instance.full
            : (full as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$PhotoDetail<TRes>
    implements CopyWith$Fragment$PhotoDetail<TRes> {
  _CopyWithStubImpl$Fragment$PhotoDetail(this._res);

  TRes _res;

  call({
    String? id,
    String? thumb,
    String? full,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionPhotoDetail = FragmentDefinitionNode(
  name: NameNode(value: 'PhotoDetail'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Photo'),
    isNonNull: false,
  )),
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
      name: NameNode(value: 'thumb'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'full'),
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
);
const documentNodeFragmentPhotoDetail = DocumentNode(definitions: [
  fragmentDefinitionPhotoDetail,
]);

extension ClientExtension$Fragment$PhotoDetail on graphql.GraphQLClient {
  void writeFragment$PhotoDetail({
    required Fragment$PhotoDetail data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'PhotoDetail',
            document: documentNodeFragmentPhotoDetail,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$PhotoDetail? readFragment$PhotoDetail({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'PhotoDetail',
          document: documentNodeFragmentPhotoDetail,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$PhotoDetail.fromJson(result);
  }
}
