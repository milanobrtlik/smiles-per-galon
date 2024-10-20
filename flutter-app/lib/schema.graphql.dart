import 'package:http/http.dart';
import 'package:whereisourcar/custom_graphql_scalars.dart';

class Input$CarCreateInput {
  factory Input$CarCreateInput({required String licencePlate}) =>
      Input$CarCreateInput._({
        r'licencePlate': licencePlate,
      });

  Input$CarCreateInput._(this._$data);

  factory Input$CarCreateInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$licencePlate = data['licencePlate'];
    result$data['licencePlate'] = (l$licencePlate as String);
    return Input$CarCreateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get licencePlate => (_$data['licencePlate'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$licencePlate = licencePlate;
    result$data['licencePlate'] = l$licencePlate;
    return result$data;
  }

  CopyWith$Input$CarCreateInput<Input$CarCreateInput> get copyWith =>
      CopyWith$Input$CarCreateInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CarCreateInput) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$licencePlate = licencePlate;
    final lOther$licencePlate = other.licencePlate;
    if (l$licencePlate != lOther$licencePlate) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$licencePlate = licencePlate;
    return Object.hashAll([l$licencePlate]);
  }
}

abstract class CopyWith$Input$CarCreateInput<TRes> {
  factory CopyWith$Input$CarCreateInput(
    Input$CarCreateInput instance,
    TRes Function(Input$CarCreateInput) then,
  ) = _CopyWithImpl$Input$CarCreateInput;

  factory CopyWith$Input$CarCreateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CarCreateInput;

  TRes call({String? licencePlate});
}

class _CopyWithImpl$Input$CarCreateInput<TRes>
    implements CopyWith$Input$CarCreateInput<TRes> {
  _CopyWithImpl$Input$CarCreateInput(
    this._instance,
    this._then,
  );

  final Input$CarCreateInput _instance;

  final TRes Function(Input$CarCreateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? licencePlate = _undefined}) =>
      _then(Input$CarCreateInput._({
        ..._instance._$data,
        if (licencePlate != _undefined && licencePlate != null)
          'licencePlate': (licencePlate as String),
      }));
}

class _CopyWithStubImpl$Input$CarCreateInput<TRes>
    implements CopyWith$Input$CarCreateInput<TRes> {
  _CopyWithStubImpl$Input$CarCreateInput(this._res);

  TRes _res;

  call({String? licencePlate}) => _res;
}

class Input$CarUpdateInput {
  factory Input$CarUpdateInput({
    required String id,
    String? licencePlace,
  }) =>
      Input$CarUpdateInput._({
        r'id': id,
        if (licencePlace != null) r'licencePlace': licencePlace,
      });

  Input$CarUpdateInput._(this._$data);

  factory Input$CarUpdateInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    if (data.containsKey('licencePlace')) {
      final l$licencePlace = data['licencePlace'];
      result$data['licencePlace'] = (l$licencePlace as String?);
    }
    return Input$CarUpdateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);
  String? get licencePlace => (_$data['licencePlace'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    if (_$data.containsKey('licencePlace')) {
      final l$licencePlace = licencePlace;
      result$data['licencePlace'] = l$licencePlace;
    }
    return result$data;
  }

  CopyWith$Input$CarUpdateInput<Input$CarUpdateInput> get copyWith =>
      CopyWith$Input$CarUpdateInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CarUpdateInput) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$licencePlace = licencePlace;
    final lOther$licencePlace = other.licencePlace;
    if (_$data.containsKey('licencePlace') !=
        other._$data.containsKey('licencePlace')) {
      return false;
    }
    if (l$licencePlace != lOther$licencePlace) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$licencePlace = licencePlace;
    return Object.hashAll([
      l$id,
      _$data.containsKey('licencePlace') ? l$licencePlace : const {},
    ]);
  }
}

abstract class CopyWith$Input$CarUpdateInput<TRes> {
  factory CopyWith$Input$CarUpdateInput(
    Input$CarUpdateInput instance,
    TRes Function(Input$CarUpdateInput) then,
  ) = _CopyWithImpl$Input$CarUpdateInput;

  factory CopyWith$Input$CarUpdateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CarUpdateInput;

  TRes call({
    String? id,
    String? licencePlace,
  });
}

class _CopyWithImpl$Input$CarUpdateInput<TRes>
    implements CopyWith$Input$CarUpdateInput<TRes> {
  _CopyWithImpl$Input$CarUpdateInput(
    this._instance,
    this._then,
  );

  final Input$CarUpdateInput _instance;

  final TRes Function(Input$CarUpdateInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? licencePlace = _undefined,
  }) =>
      _then(Input$CarUpdateInput._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
        if (licencePlace != _undefined)
          'licencePlace': (licencePlace as String?),
      }));
}

class _CopyWithStubImpl$Input$CarUpdateInput<TRes>
    implements CopyWith$Input$CarUpdateInput<TRes> {
  _CopyWithStubImpl$Input$CarUpdateInput(this._res);

  TRes _res;

  call({
    String? id,
    String? licencePlace,
  }) =>
      _res;
}

class Input$EmailSignInInputTypeInput {
  factory Input$EmailSignInInputTypeInput({
    required String email,
    required String password,
  }) =>
      Input$EmailSignInInputTypeInput._({
        r'email': email,
        r'password': password,
      });

  Input$EmailSignInInputTypeInput._(this._$data);

  factory Input$EmailSignInInputTypeInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$email = data['email'];
    result$data['email'] = (l$email as String);
    final l$password = data['password'];
    result$data['password'] = (l$password as String);
    return Input$EmailSignInInputTypeInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get email => (_$data['email'] as String);
  String get password => (_$data['password'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$email = email;
    result$data['email'] = l$email;
    final l$password = password;
    result$data['password'] = l$password;
    return result$data;
  }

  CopyWith$Input$EmailSignInInputTypeInput<Input$EmailSignInInputTypeInput>
      get copyWith => CopyWith$Input$EmailSignInInputTypeInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$EmailSignInInputTypeInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$password = password;
    final lOther$password = other.password;
    if (l$password != lOther$password) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$email = email;
    final l$password = password;
    return Object.hashAll([
      l$email,
      l$password,
    ]);
  }
}

abstract class CopyWith$Input$EmailSignInInputTypeInput<TRes> {
  factory CopyWith$Input$EmailSignInInputTypeInput(
    Input$EmailSignInInputTypeInput instance,
    TRes Function(Input$EmailSignInInputTypeInput) then,
  ) = _CopyWithImpl$Input$EmailSignInInputTypeInput;

  factory CopyWith$Input$EmailSignInInputTypeInput.stub(TRes res) =
      _CopyWithStubImpl$Input$EmailSignInInputTypeInput;

  TRes call({
    String? email,
    String? password,
  });
}

class _CopyWithImpl$Input$EmailSignInInputTypeInput<TRes>
    implements CopyWith$Input$EmailSignInInputTypeInput<TRes> {
  _CopyWithImpl$Input$EmailSignInInputTypeInput(
    this._instance,
    this._then,
  );

  final Input$EmailSignInInputTypeInput _instance;

  final TRes Function(Input$EmailSignInInputTypeInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? email = _undefined,
    Object? password = _undefined,
  }) =>
      _then(Input$EmailSignInInputTypeInput._({
        ..._instance._$data,
        if (email != _undefined && email != null) 'email': (email as String),
        if (password != _undefined && password != null)
          'password': (password as String),
      }));
}

class _CopyWithStubImpl$Input$EmailSignInInputTypeInput<TRes>
    implements CopyWith$Input$EmailSignInInputTypeInput<TRes> {
  _CopyWithStubImpl$Input$EmailSignInInputTypeInput(this._res);

  TRes _res;

  call({
    String? email,
    String? password,
  }) =>
      _res;
}

class Input$EmailSignUpInputTypeInput {
  factory Input$EmailSignUpInputTypeInput({
    required String email,
    required String name,
    required String password,
  }) =>
      Input$EmailSignUpInputTypeInput._({
        r'email': email,
        r'name': name,
        r'password': password,
      });

  Input$EmailSignUpInputTypeInput._(this._$data);

  factory Input$EmailSignUpInputTypeInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$email = data['email'];
    result$data['email'] = (l$email as String);
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    final l$password = data['password'];
    result$data['password'] = (l$password as String);
    return Input$EmailSignUpInputTypeInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get email => (_$data['email'] as String);
  String get name => (_$data['name'] as String);
  String get password => (_$data['password'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$email = email;
    result$data['email'] = l$email;
    final l$name = name;
    result$data['name'] = l$name;
    final l$password = password;
    result$data['password'] = l$password;
    return result$data;
  }

  CopyWith$Input$EmailSignUpInputTypeInput<Input$EmailSignUpInputTypeInput>
      get copyWith => CopyWith$Input$EmailSignUpInputTypeInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$EmailSignUpInputTypeInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$password = password;
    final lOther$password = other.password;
    if (l$password != lOther$password) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$email = email;
    final l$name = name;
    final l$password = password;
    return Object.hashAll([
      l$email,
      l$name,
      l$password,
    ]);
  }
}

abstract class CopyWith$Input$EmailSignUpInputTypeInput<TRes> {
  factory CopyWith$Input$EmailSignUpInputTypeInput(
    Input$EmailSignUpInputTypeInput instance,
    TRes Function(Input$EmailSignUpInputTypeInput) then,
  ) = _CopyWithImpl$Input$EmailSignUpInputTypeInput;

  factory CopyWith$Input$EmailSignUpInputTypeInput.stub(TRes res) =
      _CopyWithStubImpl$Input$EmailSignUpInputTypeInput;

  TRes call({
    String? email,
    String? name,
    String? password,
  });
}

class _CopyWithImpl$Input$EmailSignUpInputTypeInput<TRes>
    implements CopyWith$Input$EmailSignUpInputTypeInput<TRes> {
  _CopyWithImpl$Input$EmailSignUpInputTypeInput(
    this._instance,
    this._then,
  );

  final Input$EmailSignUpInputTypeInput _instance;

  final TRes Function(Input$EmailSignUpInputTypeInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? email = _undefined,
    Object? name = _undefined,
    Object? password = _undefined,
  }) =>
      _then(Input$EmailSignUpInputTypeInput._({
        ..._instance._$data,
        if (email != _undefined && email != null) 'email': (email as String),
        if (name != _undefined && name != null) 'name': (name as String),
        if (password != _undefined && password != null)
          'password': (password as String),
      }));
}

class _CopyWithStubImpl$Input$EmailSignUpInputTypeInput<TRes>
    implements CopyWith$Input$EmailSignUpInputTypeInput<TRes> {
  _CopyWithStubImpl$Input$EmailSignUpInputTypeInput(this._res);

  TRes _res;

  call({
    String? email,
    String? name,
    String? password,
  }) =>
      _res;
}

class Input$GeoJSONLineStringInput {
  factory Input$GeoJSONLineStringInput({
    List<Position?>? coordinates,
    int? crs,
    Enum$GeoJSONGeometryType? type,
  }) =>
      Input$GeoJSONLineStringInput._({
        if (coordinates != null) r'coordinates': coordinates,
        if (crs != null) r'crs': crs,
        if (type != null) r'type': type,
      });

  Input$GeoJSONLineStringInput._(this._$data);

  factory Input$GeoJSONLineStringInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('coordinates')) {
      final l$coordinates = data['coordinates'];
      result$data['coordinates'] = (l$coordinates as List<dynamic>?)
          ?.map((e) => e == null ? null : customPositionFromJson(e))
          .toList();
    }
    if (data.containsKey('crs')) {
      final l$crs = data['crs'];
      result$data['crs'] = (l$crs as int?);
    }
    if (data.containsKey('type')) {
      final l$type = data['type'];
      result$data['type'] = l$type == null
          ? null
          : fromJson$Enum$GeoJSONGeometryType((l$type as String));
    }
    return Input$GeoJSONLineStringInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Position?>? get coordinates =>
      (_$data['coordinates'] as List<Position?>?);
  int? get crs => (_$data['crs'] as int?);
  Enum$GeoJSONGeometryType? get type =>
      (_$data['type'] as Enum$GeoJSONGeometryType?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('coordinates')) {
      final l$coordinates = coordinates;
      result$data['coordinates'] = l$coordinates
          ?.map((e) => e == null ? null : customPositionToJson(e))
          .toList();
    }
    if (_$data.containsKey('crs')) {
      final l$crs = crs;
      result$data['crs'] = l$crs;
    }
    if (_$data.containsKey('type')) {
      final l$type = type;
      result$data['type'] =
          l$type == null ? null : toJson$Enum$GeoJSONGeometryType(l$type);
    }
    return result$data;
  }

  CopyWith$Input$GeoJSONLineStringInput<Input$GeoJSONLineStringInput>
      get copyWith => CopyWith$Input$GeoJSONLineStringInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$GeoJSONLineStringInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$coordinates = coordinates;
    final lOther$coordinates = other.coordinates;
    if (_$data.containsKey('coordinates') !=
        other._$data.containsKey('coordinates')) {
      return false;
    }
    if (l$coordinates != null && lOther$coordinates != null) {
      if (l$coordinates.length != lOther$coordinates.length) {
        return false;
      }
      for (int i = 0; i < l$coordinates.length; i++) {
        final l$coordinates$entry = l$coordinates[i];
        final lOther$coordinates$entry = lOther$coordinates[i];
        if (l$coordinates$entry != lOther$coordinates$entry) {
          return false;
        }
      }
    } else if (l$coordinates != lOther$coordinates) {
      return false;
    }
    final l$crs = crs;
    final lOther$crs = other.crs;
    if (_$data.containsKey('crs') != other._$data.containsKey('crs')) {
      return false;
    }
    if (l$crs != lOther$crs) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (_$data.containsKey('type') != other._$data.containsKey('type')) {
      return false;
    }
    if (l$type != lOther$type) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$coordinates = coordinates;
    final l$crs = crs;
    final l$type = type;
    return Object.hashAll([
      _$data.containsKey('coordinates')
          ? l$coordinates == null
              ? null
              : Object.hashAll(l$coordinates.map((v) => v))
          : const {},
      _$data.containsKey('crs') ? l$crs : const {},
      _$data.containsKey('type') ? l$type : const {},
    ]);
  }
}

abstract class CopyWith$Input$GeoJSONLineStringInput<TRes> {
  factory CopyWith$Input$GeoJSONLineStringInput(
    Input$GeoJSONLineStringInput instance,
    TRes Function(Input$GeoJSONLineStringInput) then,
  ) = _CopyWithImpl$Input$GeoJSONLineStringInput;

  factory CopyWith$Input$GeoJSONLineStringInput.stub(TRes res) =
      _CopyWithStubImpl$Input$GeoJSONLineStringInput;

  TRes call({
    List<Position?>? coordinates,
    int? crs,
    Enum$GeoJSONGeometryType? type,
  });
}

class _CopyWithImpl$Input$GeoJSONLineStringInput<TRes>
    implements CopyWith$Input$GeoJSONLineStringInput<TRes> {
  _CopyWithImpl$Input$GeoJSONLineStringInput(
    this._instance,
    this._then,
  );

  final Input$GeoJSONLineStringInput _instance;

  final TRes Function(Input$GeoJSONLineStringInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? coordinates = _undefined,
    Object? crs = _undefined,
    Object? type = _undefined,
  }) =>
      _then(Input$GeoJSONLineStringInput._({
        ..._instance._$data,
        if (coordinates != _undefined)
          'coordinates': (coordinates as List<Position?>?),
        if (crs != _undefined) 'crs': (crs as int?),
        if (type != _undefined) 'type': (type as Enum$GeoJSONGeometryType?),
      }));
}

class _CopyWithStubImpl$Input$GeoJSONLineStringInput<TRes>
    implements CopyWith$Input$GeoJSONLineStringInput<TRes> {
  _CopyWithStubImpl$Input$GeoJSONLineStringInput(this._res);

  TRes _res;

  call({
    List<Position?>? coordinates,
    int? crs,
    Enum$GeoJSONGeometryType? type,
  }) =>
      _res;
}

class Input$GeoJSONMultiLineStringInput {
  factory Input$GeoJSONMultiLineStringInput({
    List<List<Position?>?>? coordinates,
    int? crs,
    Enum$GeoJSONGeometryType? type,
  }) =>
      Input$GeoJSONMultiLineStringInput._({
        if (coordinates != null) r'coordinates': coordinates,
        if (crs != null) r'crs': crs,
        if (type != null) r'type': type,
      });

  Input$GeoJSONMultiLineStringInput._(this._$data);

  factory Input$GeoJSONMultiLineStringInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('coordinates')) {
      final l$coordinates = data['coordinates'];
      result$data['coordinates'] = (l$coordinates as List<dynamic>?)
          ?.map((e) => (e as List<dynamic>?)
              ?.map((e) => e == null ? null : customPositionFromJson(e))
              .toList())
          .toList();
    }
    if (data.containsKey('crs')) {
      final l$crs = data['crs'];
      result$data['crs'] = (l$crs as int?);
    }
    if (data.containsKey('type')) {
      final l$type = data['type'];
      result$data['type'] = l$type == null
          ? null
          : fromJson$Enum$GeoJSONGeometryType((l$type as String));
    }
    return Input$GeoJSONMultiLineStringInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<List<Position?>?>? get coordinates =>
      (_$data['coordinates'] as List<List<Position?>?>?);
  int? get crs => (_$data['crs'] as int?);
  Enum$GeoJSONGeometryType? get type =>
      (_$data['type'] as Enum$GeoJSONGeometryType?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('coordinates')) {
      final l$coordinates = coordinates;
      result$data['coordinates'] = l$coordinates
          ?.map((e) => e
              ?.map((e) => e == null ? null : customPositionToJson(e))
              .toList())
          .toList();
    }
    if (_$data.containsKey('crs')) {
      final l$crs = crs;
      result$data['crs'] = l$crs;
    }
    if (_$data.containsKey('type')) {
      final l$type = type;
      result$data['type'] =
          l$type == null ? null : toJson$Enum$GeoJSONGeometryType(l$type);
    }
    return result$data;
  }

  CopyWith$Input$GeoJSONMultiLineStringInput<Input$GeoJSONMultiLineStringInput>
      get copyWith => CopyWith$Input$GeoJSONMultiLineStringInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$GeoJSONMultiLineStringInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$coordinates = coordinates;
    final lOther$coordinates = other.coordinates;
    if (_$data.containsKey('coordinates') !=
        other._$data.containsKey('coordinates')) {
      return false;
    }
    if (l$coordinates != null && lOther$coordinates != null) {
      if (l$coordinates.length != lOther$coordinates.length) {
        return false;
      }
      for (int i = 0; i < l$coordinates.length; i++) {
        final l$coordinates$entry = l$coordinates[i];
        final lOther$coordinates$entry = lOther$coordinates[i];
        if (l$coordinates$entry != null && lOther$coordinates$entry != null) {
          if (l$coordinates$entry.length != lOther$coordinates$entry.length) {
            return false;
          }
          for (int i = 0; i < l$coordinates$entry.length; i++) {
            final l$coordinates$entry$entry = l$coordinates$entry[i];
            final lOther$coordinates$entry$entry = lOther$coordinates$entry[i];
            if (l$coordinates$entry$entry != lOther$coordinates$entry$entry) {
              return false;
            }
          }
        } else if (l$coordinates$entry != lOther$coordinates$entry) {
          return false;
        }
      }
    } else if (l$coordinates != lOther$coordinates) {
      return false;
    }
    final l$crs = crs;
    final lOther$crs = other.crs;
    if (_$data.containsKey('crs') != other._$data.containsKey('crs')) {
      return false;
    }
    if (l$crs != lOther$crs) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (_$data.containsKey('type') != other._$data.containsKey('type')) {
      return false;
    }
    if (l$type != lOther$type) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$coordinates = coordinates;
    final l$crs = crs;
    final l$type = type;
    return Object.hashAll([
      _$data.containsKey('coordinates')
          ? l$coordinates == null
              ? null
              : Object.hashAll(l$coordinates.map(
                  (v) => v == null ? null : Object.hashAll(v.map((v) => v))))
          : const {},
      _$data.containsKey('crs') ? l$crs : const {},
      _$data.containsKey('type') ? l$type : const {},
    ]);
  }
}

abstract class CopyWith$Input$GeoJSONMultiLineStringInput<TRes> {
  factory CopyWith$Input$GeoJSONMultiLineStringInput(
    Input$GeoJSONMultiLineStringInput instance,
    TRes Function(Input$GeoJSONMultiLineStringInput) then,
  ) = _CopyWithImpl$Input$GeoJSONMultiLineStringInput;

  factory CopyWith$Input$GeoJSONMultiLineStringInput.stub(TRes res) =
      _CopyWithStubImpl$Input$GeoJSONMultiLineStringInput;

  TRes call({
    List<List<Position?>?>? coordinates,
    int? crs,
    Enum$GeoJSONGeometryType? type,
  });
}

class _CopyWithImpl$Input$GeoJSONMultiLineStringInput<TRes>
    implements CopyWith$Input$GeoJSONMultiLineStringInput<TRes> {
  _CopyWithImpl$Input$GeoJSONMultiLineStringInput(
    this._instance,
    this._then,
  );

  final Input$GeoJSONMultiLineStringInput _instance;

  final TRes Function(Input$GeoJSONMultiLineStringInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? coordinates = _undefined,
    Object? crs = _undefined,
    Object? type = _undefined,
  }) =>
      _then(Input$GeoJSONMultiLineStringInput._({
        ..._instance._$data,
        if (coordinates != _undefined)
          'coordinates': (coordinates as List<List<Position?>?>?),
        if (crs != _undefined) 'crs': (crs as int?),
        if (type != _undefined) 'type': (type as Enum$GeoJSONGeometryType?),
      }));
}

class _CopyWithStubImpl$Input$GeoJSONMultiLineStringInput<TRes>
    implements CopyWith$Input$GeoJSONMultiLineStringInput<TRes> {
  _CopyWithStubImpl$Input$GeoJSONMultiLineStringInput(this._res);

  TRes _res;

  call({
    List<List<Position?>?>? coordinates,
    int? crs,
    Enum$GeoJSONGeometryType? type,
  }) =>
      _res;
}

class Input$GeoJSONMultiPointInput {
  factory Input$GeoJSONMultiPointInput({
    List<Position?>? coordinates,
    int? crs,
    Enum$GeoJSONGeometryType? type,
  }) =>
      Input$GeoJSONMultiPointInput._({
        if (coordinates != null) r'coordinates': coordinates,
        if (crs != null) r'crs': crs,
        if (type != null) r'type': type,
      });

  Input$GeoJSONMultiPointInput._(this._$data);

  factory Input$GeoJSONMultiPointInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('coordinates')) {
      final l$coordinates = data['coordinates'];
      result$data['coordinates'] = (l$coordinates as List<dynamic>?)
          ?.map((e) => e == null ? null : customPositionFromJson(e))
          .toList();
    }
    if (data.containsKey('crs')) {
      final l$crs = data['crs'];
      result$data['crs'] = (l$crs as int?);
    }
    if (data.containsKey('type')) {
      final l$type = data['type'];
      result$data['type'] = l$type == null
          ? null
          : fromJson$Enum$GeoJSONGeometryType((l$type as String));
    }
    return Input$GeoJSONMultiPointInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Position?>? get coordinates =>
      (_$data['coordinates'] as List<Position?>?);
  int? get crs => (_$data['crs'] as int?);
  Enum$GeoJSONGeometryType? get type =>
      (_$data['type'] as Enum$GeoJSONGeometryType?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('coordinates')) {
      final l$coordinates = coordinates;
      result$data['coordinates'] = l$coordinates
          ?.map((e) => e == null ? null : customPositionToJson(e))
          .toList();
    }
    if (_$data.containsKey('crs')) {
      final l$crs = crs;
      result$data['crs'] = l$crs;
    }
    if (_$data.containsKey('type')) {
      final l$type = type;
      result$data['type'] =
          l$type == null ? null : toJson$Enum$GeoJSONGeometryType(l$type);
    }
    return result$data;
  }

  CopyWith$Input$GeoJSONMultiPointInput<Input$GeoJSONMultiPointInput>
      get copyWith => CopyWith$Input$GeoJSONMultiPointInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$GeoJSONMultiPointInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$coordinates = coordinates;
    final lOther$coordinates = other.coordinates;
    if (_$data.containsKey('coordinates') !=
        other._$data.containsKey('coordinates')) {
      return false;
    }
    if (l$coordinates != null && lOther$coordinates != null) {
      if (l$coordinates.length != lOther$coordinates.length) {
        return false;
      }
      for (int i = 0; i < l$coordinates.length; i++) {
        final l$coordinates$entry = l$coordinates[i];
        final lOther$coordinates$entry = lOther$coordinates[i];
        if (l$coordinates$entry != lOther$coordinates$entry) {
          return false;
        }
      }
    } else if (l$coordinates != lOther$coordinates) {
      return false;
    }
    final l$crs = crs;
    final lOther$crs = other.crs;
    if (_$data.containsKey('crs') != other._$data.containsKey('crs')) {
      return false;
    }
    if (l$crs != lOther$crs) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (_$data.containsKey('type') != other._$data.containsKey('type')) {
      return false;
    }
    if (l$type != lOther$type) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$coordinates = coordinates;
    final l$crs = crs;
    final l$type = type;
    return Object.hashAll([
      _$data.containsKey('coordinates')
          ? l$coordinates == null
              ? null
              : Object.hashAll(l$coordinates.map((v) => v))
          : const {},
      _$data.containsKey('crs') ? l$crs : const {},
      _$data.containsKey('type') ? l$type : const {},
    ]);
  }
}

abstract class CopyWith$Input$GeoJSONMultiPointInput<TRes> {
  factory CopyWith$Input$GeoJSONMultiPointInput(
    Input$GeoJSONMultiPointInput instance,
    TRes Function(Input$GeoJSONMultiPointInput) then,
  ) = _CopyWithImpl$Input$GeoJSONMultiPointInput;

  factory CopyWith$Input$GeoJSONMultiPointInput.stub(TRes res) =
      _CopyWithStubImpl$Input$GeoJSONMultiPointInput;

  TRes call({
    List<Position?>? coordinates,
    int? crs,
    Enum$GeoJSONGeometryType? type,
  });
}

class _CopyWithImpl$Input$GeoJSONMultiPointInput<TRes>
    implements CopyWith$Input$GeoJSONMultiPointInput<TRes> {
  _CopyWithImpl$Input$GeoJSONMultiPointInput(
    this._instance,
    this._then,
  );

  final Input$GeoJSONMultiPointInput _instance;

  final TRes Function(Input$GeoJSONMultiPointInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? coordinates = _undefined,
    Object? crs = _undefined,
    Object? type = _undefined,
  }) =>
      _then(Input$GeoJSONMultiPointInput._({
        ..._instance._$data,
        if (coordinates != _undefined)
          'coordinates': (coordinates as List<Position?>?),
        if (crs != _undefined) 'crs': (crs as int?),
        if (type != _undefined) 'type': (type as Enum$GeoJSONGeometryType?),
      }));
}

class _CopyWithStubImpl$Input$GeoJSONMultiPointInput<TRes>
    implements CopyWith$Input$GeoJSONMultiPointInput<TRes> {
  _CopyWithStubImpl$Input$GeoJSONMultiPointInput(this._res);

  TRes _res;

  call({
    List<Position?>? coordinates,
    int? crs,
    Enum$GeoJSONGeometryType? type,
  }) =>
      _res;
}

class Input$GeoJSONMultiPolygonInput {
  factory Input$GeoJSONMultiPolygonInput({
    List<double>? coordinates,
    int? crs,
    Enum$GeoJSONGeometryType? type,
  }) =>
      Input$GeoJSONMultiPolygonInput._({
        if (coordinates != null) r'coordinates': coordinates,
        if (crs != null) r'crs': crs,
        if (type != null) r'type': type,
      });

  Input$GeoJSONMultiPolygonInput._(this._$data);

  factory Input$GeoJSONMultiPolygonInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('coordinates')) {
      final l$coordinates = data['coordinates'];
      result$data['coordinates'] = (l$coordinates as List<double>?);
    }
    if (data.containsKey('crs')) {
      final l$crs = data['crs'];
      result$data['crs'] = (l$crs as int?);
    }
    if (data.containsKey('type')) {
      final l$type = data['type'];
      result$data['type'] = l$type == null
          ? null
          : fromJson$Enum$GeoJSONGeometryType((l$type as String));
    }
    return Input$GeoJSONMultiPolygonInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<double>? get coordinates => (_$data['coordinates'] as List<double>?);
  int? get crs => (_$data['crs'] as int?);
  Enum$GeoJSONGeometryType? get type =>
      (_$data['type'] as Enum$GeoJSONGeometryType?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('coordinates')) {
      final l$coordinates = coordinates;
      result$data['coordinates'] = l$coordinates;
    }
    if (_$data.containsKey('crs')) {
      final l$crs = crs;
      result$data['crs'] = l$crs;
    }
    if (_$data.containsKey('type')) {
      final l$type = type;
      result$data['type'] =
          l$type == null ? null : toJson$Enum$GeoJSONGeometryType(l$type);
    }
    return result$data;
  }

  CopyWith$Input$GeoJSONMultiPolygonInput<Input$GeoJSONMultiPolygonInput>
      get copyWith => CopyWith$Input$GeoJSONMultiPolygonInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$GeoJSONMultiPolygonInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$coordinates = coordinates;
    final lOther$coordinates = other.coordinates;
    if (_$data.containsKey('coordinates') !=
        other._$data.containsKey('coordinates')) {
      return false;
    }
    if (l$coordinates != lOther$coordinates) {
      return false;
    }
    final l$crs = crs;
    final lOther$crs = other.crs;
    if (_$data.containsKey('crs') != other._$data.containsKey('crs')) {
      return false;
    }
    if (l$crs != lOther$crs) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (_$data.containsKey('type') != other._$data.containsKey('type')) {
      return false;
    }
    if (l$type != lOther$type) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$coordinates = coordinates;
    final l$crs = crs;
    final l$type = type;
    return Object.hashAll([
      _$data.containsKey('coordinates') ? l$coordinates : const {},
      _$data.containsKey('crs') ? l$crs : const {},
      _$data.containsKey('type') ? l$type : const {},
    ]);
  }
}

abstract class CopyWith$Input$GeoJSONMultiPolygonInput<TRes> {
  factory CopyWith$Input$GeoJSONMultiPolygonInput(
    Input$GeoJSONMultiPolygonInput instance,
    TRes Function(Input$GeoJSONMultiPolygonInput) then,
  ) = _CopyWithImpl$Input$GeoJSONMultiPolygonInput;

  factory CopyWith$Input$GeoJSONMultiPolygonInput.stub(TRes res) =
      _CopyWithStubImpl$Input$GeoJSONMultiPolygonInput;

  TRes call({
    List<double>? coordinates,
    int? crs,
    Enum$GeoJSONGeometryType? type,
  });
}

class _CopyWithImpl$Input$GeoJSONMultiPolygonInput<TRes>
    implements CopyWith$Input$GeoJSONMultiPolygonInput<TRes> {
  _CopyWithImpl$Input$GeoJSONMultiPolygonInput(
    this._instance,
    this._then,
  );

  final Input$GeoJSONMultiPolygonInput _instance;

  final TRes Function(Input$GeoJSONMultiPolygonInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? coordinates = _undefined,
    Object? crs = _undefined,
    Object? type = _undefined,
  }) =>
      _then(Input$GeoJSONMultiPolygonInput._({
        ..._instance._$data,
        if (coordinates != _undefined)
          'coordinates': (coordinates as List<double>?),
        if (crs != _undefined) 'crs': (crs as int?),
        if (type != _undefined) 'type': (type as Enum$GeoJSONGeometryType?),
      }));
}

class _CopyWithStubImpl$Input$GeoJSONMultiPolygonInput<TRes>
    implements CopyWith$Input$GeoJSONMultiPolygonInput<TRes> {
  _CopyWithStubImpl$Input$GeoJSONMultiPolygonInput(this._res);

  TRes _res;

  call({
    List<double>? coordinates,
    int? crs,
    Enum$GeoJSONGeometryType? type,
  }) =>
      _res;
}

class Input$GeoJSONPointInput {
  factory Input$GeoJSONPointInput({
    Position? coordinates,
    int? crs,
    Enum$GeoJSONGeometryType? type,
  }) =>
      Input$GeoJSONPointInput._({
        if (coordinates != null) r'coordinates': coordinates,
        if (crs != null) r'crs': crs,
        if (type != null) r'type': type,
      });

  Input$GeoJSONPointInput._(this._$data);

  factory Input$GeoJSONPointInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('coordinates')) {
      final l$coordinates = data['coordinates'];
      result$data['coordinates'] =
          l$coordinates == null ? null : customPositionFromJson(l$coordinates);
    }
    if (data.containsKey('crs')) {
      final l$crs = data['crs'];
      result$data['crs'] = (l$crs as int?);
    }
    if (data.containsKey('type')) {
      final l$type = data['type'];
      result$data['type'] = l$type == null
          ? null
          : fromJson$Enum$GeoJSONGeometryType((l$type as String));
    }
    return Input$GeoJSONPointInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Position? get coordinates => (_$data['coordinates'] as Position?);
  int? get crs => (_$data['crs'] as int?);
  Enum$GeoJSONGeometryType? get type =>
      (_$data['type'] as Enum$GeoJSONGeometryType?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('coordinates')) {
      final l$coordinates = coordinates;
      result$data['coordinates'] =
          l$coordinates == null ? null : customPositionToJson(l$coordinates);
    }
    if (_$data.containsKey('crs')) {
      final l$crs = crs;
      result$data['crs'] = l$crs;
    }
    if (_$data.containsKey('type')) {
      final l$type = type;
      result$data['type'] =
          l$type == null ? null : toJson$Enum$GeoJSONGeometryType(l$type);
    }
    return result$data;
  }

  CopyWith$Input$GeoJSONPointInput<Input$GeoJSONPointInput> get copyWith =>
      CopyWith$Input$GeoJSONPointInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$GeoJSONPointInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$coordinates = coordinates;
    final lOther$coordinates = other.coordinates;
    if (_$data.containsKey('coordinates') !=
        other._$data.containsKey('coordinates')) {
      return false;
    }
    if (l$coordinates != lOther$coordinates) {
      return false;
    }
    final l$crs = crs;
    final lOther$crs = other.crs;
    if (_$data.containsKey('crs') != other._$data.containsKey('crs')) {
      return false;
    }
    if (l$crs != lOther$crs) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (_$data.containsKey('type') != other._$data.containsKey('type')) {
      return false;
    }
    if (l$type != lOther$type) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$coordinates = coordinates;
    final l$crs = crs;
    final l$type = type;
    return Object.hashAll([
      _$data.containsKey('coordinates') ? l$coordinates : const {},
      _$data.containsKey('crs') ? l$crs : const {},
      _$data.containsKey('type') ? l$type : const {},
    ]);
  }
}

abstract class CopyWith$Input$GeoJSONPointInput<TRes> {
  factory CopyWith$Input$GeoJSONPointInput(
    Input$GeoJSONPointInput instance,
    TRes Function(Input$GeoJSONPointInput) then,
  ) = _CopyWithImpl$Input$GeoJSONPointInput;

  factory CopyWith$Input$GeoJSONPointInput.stub(TRes res) =
      _CopyWithStubImpl$Input$GeoJSONPointInput;

  TRes call({
    Position? coordinates,
    int? crs,
    Enum$GeoJSONGeometryType? type,
  });
}

class _CopyWithImpl$Input$GeoJSONPointInput<TRes>
    implements CopyWith$Input$GeoJSONPointInput<TRes> {
  _CopyWithImpl$Input$GeoJSONPointInput(
    this._instance,
    this._then,
  );

  final Input$GeoJSONPointInput _instance;

  final TRes Function(Input$GeoJSONPointInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? coordinates = _undefined,
    Object? crs = _undefined,
    Object? type = _undefined,
  }) =>
      _then(Input$GeoJSONPointInput._({
        ..._instance._$data,
        if (coordinates != _undefined)
          'coordinates': (coordinates as Position?),
        if (crs != _undefined) 'crs': (crs as int?),
        if (type != _undefined) 'type': (type as Enum$GeoJSONGeometryType?),
      }));
}

class _CopyWithStubImpl$Input$GeoJSONPointInput<TRes>
    implements CopyWith$Input$GeoJSONPointInput<TRes> {
  _CopyWithStubImpl$Input$GeoJSONPointInput(this._res);

  TRes _res;

  call({
    Position? coordinates,
    int? crs,
    Enum$GeoJSONGeometryType? type,
  }) =>
      _res;
}

class Input$GeoJSONPolygonInput {
  factory Input$GeoJSONPolygonInput({
    List<List<Position?>?>? coordinates,
    int? crs,
    Enum$GeoJSONGeometryType? type,
  }) =>
      Input$GeoJSONPolygonInput._({
        if (coordinates != null) r'coordinates': coordinates,
        if (crs != null) r'crs': crs,
        if (type != null) r'type': type,
      });

  Input$GeoJSONPolygonInput._(this._$data);

  factory Input$GeoJSONPolygonInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('coordinates')) {
      final l$coordinates = data['coordinates'];
      result$data['coordinates'] = (l$coordinates as List<dynamic>?)
          ?.map((e) => (e as List<dynamic>?)
              ?.map((e) => e == null ? null : customPositionFromJson(e))
              .toList())
          .toList();
    }
    if (data.containsKey('crs')) {
      final l$crs = data['crs'];
      result$data['crs'] = (l$crs as int?);
    }
    if (data.containsKey('type')) {
      final l$type = data['type'];
      result$data['type'] = l$type == null
          ? null
          : fromJson$Enum$GeoJSONGeometryType((l$type as String));
    }
    return Input$GeoJSONPolygonInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<List<Position?>?>? get coordinates =>
      (_$data['coordinates'] as List<List<Position?>?>?);
  int? get crs => (_$data['crs'] as int?);
  Enum$GeoJSONGeometryType? get type =>
      (_$data['type'] as Enum$GeoJSONGeometryType?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('coordinates')) {
      final l$coordinates = coordinates;
      result$data['coordinates'] = l$coordinates
          ?.map((e) => e
              ?.map((e) => e == null ? null : customPositionToJson(e))
              .toList())
          .toList();
    }
    if (_$data.containsKey('crs')) {
      final l$crs = crs;
      result$data['crs'] = l$crs;
    }
    if (_$data.containsKey('type')) {
      final l$type = type;
      result$data['type'] =
          l$type == null ? null : toJson$Enum$GeoJSONGeometryType(l$type);
    }
    return result$data;
  }

  CopyWith$Input$GeoJSONPolygonInput<Input$GeoJSONPolygonInput> get copyWith =>
      CopyWith$Input$GeoJSONPolygonInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$GeoJSONPolygonInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$coordinates = coordinates;
    final lOther$coordinates = other.coordinates;
    if (_$data.containsKey('coordinates') !=
        other._$data.containsKey('coordinates')) {
      return false;
    }
    if (l$coordinates != null && lOther$coordinates != null) {
      if (l$coordinates.length != lOther$coordinates.length) {
        return false;
      }
      for (int i = 0; i < l$coordinates.length; i++) {
        final l$coordinates$entry = l$coordinates[i];
        final lOther$coordinates$entry = lOther$coordinates[i];
        if (l$coordinates$entry != null && lOther$coordinates$entry != null) {
          if (l$coordinates$entry.length != lOther$coordinates$entry.length) {
            return false;
          }
          for (int i = 0; i < l$coordinates$entry.length; i++) {
            final l$coordinates$entry$entry = l$coordinates$entry[i];
            final lOther$coordinates$entry$entry = lOther$coordinates$entry[i];
            if (l$coordinates$entry$entry != lOther$coordinates$entry$entry) {
              return false;
            }
          }
        } else if (l$coordinates$entry != lOther$coordinates$entry) {
          return false;
        }
      }
    } else if (l$coordinates != lOther$coordinates) {
      return false;
    }
    final l$crs = crs;
    final lOther$crs = other.crs;
    if (_$data.containsKey('crs') != other._$data.containsKey('crs')) {
      return false;
    }
    if (l$crs != lOther$crs) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (_$data.containsKey('type') != other._$data.containsKey('type')) {
      return false;
    }
    if (l$type != lOther$type) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$coordinates = coordinates;
    final l$crs = crs;
    final l$type = type;
    return Object.hashAll([
      _$data.containsKey('coordinates')
          ? l$coordinates == null
              ? null
              : Object.hashAll(l$coordinates.map(
                  (v) => v == null ? null : Object.hashAll(v.map((v) => v))))
          : const {},
      _$data.containsKey('crs') ? l$crs : const {},
      _$data.containsKey('type') ? l$type : const {},
    ]);
  }
}

abstract class CopyWith$Input$GeoJSONPolygonInput<TRes> {
  factory CopyWith$Input$GeoJSONPolygonInput(
    Input$GeoJSONPolygonInput instance,
    TRes Function(Input$GeoJSONPolygonInput) then,
  ) = _CopyWithImpl$Input$GeoJSONPolygonInput;

  factory CopyWith$Input$GeoJSONPolygonInput.stub(TRes res) =
      _CopyWithStubImpl$Input$GeoJSONPolygonInput;

  TRes call({
    List<List<Position?>?>? coordinates,
    int? crs,
    Enum$GeoJSONGeometryType? type,
  });
}

class _CopyWithImpl$Input$GeoJSONPolygonInput<TRes>
    implements CopyWith$Input$GeoJSONPolygonInput<TRes> {
  _CopyWithImpl$Input$GeoJSONPolygonInput(
    this._instance,
    this._then,
  );

  final Input$GeoJSONPolygonInput _instance;

  final TRes Function(Input$GeoJSONPolygonInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? coordinates = _undefined,
    Object? crs = _undefined,
    Object? type = _undefined,
  }) =>
      _then(Input$GeoJSONPolygonInput._({
        ..._instance._$data,
        if (coordinates != _undefined)
          'coordinates': (coordinates as List<List<Position?>?>?),
        if (crs != _undefined) 'crs': (crs as int?),
        if (type != _undefined) 'type': (type as Enum$GeoJSONGeometryType?),
      }));
}

class _CopyWithStubImpl$Input$GeoJSONPolygonInput<TRes>
    implements CopyWith$Input$GeoJSONPolygonInput<TRes> {
  _CopyWithStubImpl$Input$GeoJSONPolygonInput(this._res);

  TRes _res;

  call({
    List<List<Position?>?>? coordinates,
    int? crs,
    Enum$GeoJSONGeometryType? type,
  }) =>
      _res;
}

class Input$PhotoInput {
  factory Input$PhotoInput({
    required MultipartFile full,
    required MultipartFile thumb,
  }) =>
      Input$PhotoInput._({
        r'full': full,
        r'thumb': thumb,
      });

  Input$PhotoInput._(this._$data);

  factory Input$PhotoInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$full = data['full'];
    result$data['full'] = (l$full as MultipartFile);
    final l$thumb = data['thumb'];
    result$data['thumb'] = (l$thumb as MultipartFile);
    return Input$PhotoInput._(result$data);
  }

  Map<String, dynamic> _$data;

  MultipartFile get full => (_$data['full'] as MultipartFile);
  MultipartFile get thumb => (_$data['thumb'] as MultipartFile);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$full = full;
    result$data['full'] = l$full;
    final l$thumb = thumb;
    result$data['thumb'] = l$thumb;
    return result$data;
  }

  CopyWith$Input$PhotoInput<Input$PhotoInput> get copyWith =>
      CopyWith$Input$PhotoInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$PhotoInput) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$full = full;
    final lOther$full = other.full;
    if (l$full != lOther$full) {
      return false;
    }
    final l$thumb = thumb;
    final lOther$thumb = other.thumb;
    if (l$thumb != lOther$thumb) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$full = full;
    final l$thumb = thumb;
    return Object.hashAll([
      l$full,
      l$thumb,
    ]);
  }
}

abstract class CopyWith$Input$PhotoInput<TRes> {
  factory CopyWith$Input$PhotoInput(
    Input$PhotoInput instance,
    TRes Function(Input$PhotoInput) then,
  ) = _CopyWithImpl$Input$PhotoInput;

  factory CopyWith$Input$PhotoInput.stub(TRes res) =
      _CopyWithStubImpl$Input$PhotoInput;

  TRes call({
    MultipartFile? full,
    MultipartFile? thumb,
  });
}

class _CopyWithImpl$Input$PhotoInput<TRes>
    implements CopyWith$Input$PhotoInput<TRes> {
  _CopyWithImpl$Input$PhotoInput(
    this._instance,
    this._then,
  );

  final Input$PhotoInput _instance;

  final TRes Function(Input$PhotoInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? full = _undefined,
    Object? thumb = _undefined,
  }) =>
      _then(Input$PhotoInput._({
        ..._instance._$data,
        if (full != _undefined && full != null) 'full': (full as MultipartFile),
        if (thumb != _undefined && thumb != null)
          'thumb': (thumb as MultipartFile),
      }));
}

class _CopyWithStubImpl$Input$PhotoInput<TRes>
    implements CopyWith$Input$PhotoInput<TRes> {
  _CopyWithStubImpl$Input$PhotoInput(this._res);

  TRes _res;

  call({
    MultipartFile? full,
    MultipartFile? thumb,
  }) =>
      _res;
}

class Input$PositionHistoryInput {
  factory Input$PositionHistoryInput({
    required String carId,
    required double lat,
    required double lon,
    required List<Input$PhotoInput> photos,
  }) =>
      Input$PositionHistoryInput._({
        r'carId': carId,
        r'lat': lat,
        r'lon': lon,
        r'photos': photos,
      });

  Input$PositionHistoryInput._(this._$data);

  factory Input$PositionHistoryInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$carId = data['carId'];
    result$data['carId'] = (l$carId as String);
    final l$lat = data['lat'];
    result$data['lat'] = (l$lat as num).toDouble();
    final l$lon = data['lon'];
    result$data['lon'] = (l$lon as num).toDouble();
    final l$photos = data['photos'];
    result$data['photos'] = (l$photos as List<dynamic>)
        .map((e) => Input$PhotoInput.fromJson((e as Map<String, dynamic>)))
        .toList();
    return Input$PositionHistoryInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get carId => (_$data['carId'] as String);
  double get lat => (_$data['lat'] as double);
  double get lon => (_$data['lon'] as double);
  List<Input$PhotoInput> get photos =>
      (_$data['photos'] as List<Input$PhotoInput>);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$carId = carId;
    result$data['carId'] = l$carId;
    final l$lat = lat;
    result$data['lat'] = l$lat;
    final l$lon = lon;
    result$data['lon'] = l$lon;
    final l$photos = photos;
    result$data['photos'] = l$photos.map((e) => e.toJson()).toList();
    return result$data;
  }

  CopyWith$Input$PositionHistoryInput<Input$PositionHistoryInput>
      get copyWith => CopyWith$Input$PositionHistoryInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$PositionHistoryInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$carId = carId;
    final lOther$carId = other.carId;
    if (l$carId != lOther$carId) {
      return false;
    }
    final l$lat = lat;
    final lOther$lat = other.lat;
    if (l$lat != lOther$lat) {
      return false;
    }
    final l$lon = lon;
    final lOther$lon = other.lon;
    if (l$lon != lOther$lon) {
      return false;
    }
    final l$photos = photos;
    final lOther$photos = other.photos;
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
    return true;
  }

  @override
  int get hashCode {
    final l$carId = carId;
    final l$lat = lat;
    final l$lon = lon;
    final l$photos = photos;
    return Object.hashAll([
      l$carId,
      l$lat,
      l$lon,
      Object.hashAll(l$photos.map((v) => v)),
    ]);
  }
}

abstract class CopyWith$Input$PositionHistoryInput<TRes> {
  factory CopyWith$Input$PositionHistoryInput(
    Input$PositionHistoryInput instance,
    TRes Function(Input$PositionHistoryInput) then,
  ) = _CopyWithImpl$Input$PositionHistoryInput;

  factory CopyWith$Input$PositionHistoryInput.stub(TRes res) =
      _CopyWithStubImpl$Input$PositionHistoryInput;

  TRes call({
    String? carId,
    double? lat,
    double? lon,
    List<Input$PhotoInput>? photos,
  });
  TRes photos(
      Iterable<Input$PhotoInput> Function(
              Iterable<CopyWith$Input$PhotoInput<Input$PhotoInput>>)
          _fn);
}

class _CopyWithImpl$Input$PositionHistoryInput<TRes>
    implements CopyWith$Input$PositionHistoryInput<TRes> {
  _CopyWithImpl$Input$PositionHistoryInput(
    this._instance,
    this._then,
  );

  final Input$PositionHistoryInput _instance;

  final TRes Function(Input$PositionHistoryInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? carId = _undefined,
    Object? lat = _undefined,
    Object? lon = _undefined,
    Object? photos = _undefined,
  }) =>
      _then(Input$PositionHistoryInput._({
        ..._instance._$data,
        if (carId != _undefined && carId != null) 'carId': (carId as String),
        if (lat != _undefined && lat != null) 'lat': (lat as double),
        if (lon != _undefined && lon != null) 'lon': (lon as double),
        if (photos != _undefined && photos != null)
          'photos': (photos as List<Input$PhotoInput>),
      }));
  TRes photos(
          Iterable<Input$PhotoInput> Function(
                  Iterable<CopyWith$Input$PhotoInput<Input$PhotoInput>>)
              _fn) =>
      call(
          photos: _fn(_instance.photos.map((e) => CopyWith$Input$PhotoInput(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Input$PositionHistoryInput<TRes>
    implements CopyWith$Input$PositionHistoryInput<TRes> {
  _CopyWithStubImpl$Input$PositionHistoryInput(this._res);

  TRes _res;

  call({
    String? carId,
    double? lat,
    double? lon,
    List<Input$PhotoInput>? photos,
  }) =>
      _res;
  photos(_fn) => _res;
}

enum Enum$ApplyPolicy { AFTER_RESOLVER, BEFORE_RESOLVER, VALIDATION, $unknown }

String toJson$Enum$ApplyPolicy(Enum$ApplyPolicy e) {
  switch (e) {
    case Enum$ApplyPolicy.AFTER_RESOLVER:
      return r'AFTER_RESOLVER';
    case Enum$ApplyPolicy.BEFORE_RESOLVER:
      return r'BEFORE_RESOLVER';
    case Enum$ApplyPolicy.VALIDATION:
      return r'VALIDATION';
    case Enum$ApplyPolicy.$unknown:
      return r'$unknown';
  }
}

Enum$ApplyPolicy fromJson$Enum$ApplyPolicy(String value) {
  switch (value) {
    case r'AFTER_RESOLVER':
      return Enum$ApplyPolicy.AFTER_RESOLVER;
    case r'BEFORE_RESOLVER':
      return Enum$ApplyPolicy.BEFORE_RESOLVER;
    case r'VALIDATION':
      return Enum$ApplyPolicy.VALIDATION;
    default:
      return Enum$ApplyPolicy.$unknown;
  }
}

enum Enum$GeoJSONGeometryType {
  GeometryCollection,
  LineString,
  MultiLineString,
  MultiPoint,
  MultiPolygon,
  Point,
  Polygon,
  $unknown
}

String toJson$Enum$GeoJSONGeometryType(Enum$GeoJSONGeometryType e) {
  switch (e) {
    case Enum$GeoJSONGeometryType.GeometryCollection:
      return r'GeometryCollection';
    case Enum$GeoJSONGeometryType.LineString:
      return r'LineString';
    case Enum$GeoJSONGeometryType.MultiLineString:
      return r'MultiLineString';
    case Enum$GeoJSONGeometryType.MultiPoint:
      return r'MultiPoint';
    case Enum$GeoJSONGeometryType.MultiPolygon:
      return r'MultiPolygon';
    case Enum$GeoJSONGeometryType.Point:
      return r'Point';
    case Enum$GeoJSONGeometryType.Polygon:
      return r'Polygon';
    case Enum$GeoJSONGeometryType.$unknown:
      return r'$unknown';
  }
}

Enum$GeoJSONGeometryType fromJson$Enum$GeoJSONGeometryType(String value) {
  switch (value) {
    case r'GeometryCollection':
      return Enum$GeoJSONGeometryType.GeometryCollection;
    case r'LineString':
      return Enum$GeoJSONGeometryType.LineString;
    case r'MultiLineString':
      return Enum$GeoJSONGeometryType.MultiLineString;
    case r'MultiPoint':
      return Enum$GeoJSONGeometryType.MultiPoint;
    case r'MultiPolygon':
      return Enum$GeoJSONGeometryType.MultiPolygon;
    case r'Point':
      return Enum$GeoJSONGeometryType.Point;
    case r'Polygon':
      return Enum$GeoJSONGeometryType.Polygon;
    default:
      return Enum$GeoJSONGeometryType.$unknown;
  }
}

const possibleTypesMap = <String, Set<String>>{
  'GeoJSONInterface': {
    'GeoJSONLineStringType',
    'GeoJSONMultiLineStringType',
    'GeoJSONMultiPointType',
    'GeoJSONMultiPolygonType',
    'GeoJSONPointType',
    'GeoJSONPolygonType',
  }
};
