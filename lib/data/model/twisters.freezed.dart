// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'twisters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Twisters _$TwistersFromJson(Map<String, dynamic> json) {
  return _Twisters.fromJson(json);
}

/// @nodoc
class _$TwistersTearOff {
  const _$TwistersTearOff();

  _Twisters call({required int id, String? body}) {
    return _Twisters(
      id: id,
      body: body,
    );
  }

  Twisters fromJson(Map<String, Object?> json) {
    return Twisters.fromJson(json);
  }
}

/// @nodoc
const $Twisters = _$TwistersTearOff();

/// @nodoc
mixin _$Twisters {
  int get id => throw _privateConstructorUsedError;
  String? get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TwistersCopyWith<Twisters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TwistersCopyWith<$Res> {
  factory $TwistersCopyWith(Twisters value, $Res Function(Twisters) then) =
      _$TwistersCopyWithImpl<$Res>;
  $Res call({int id, String? body});
}

/// @nodoc
class _$TwistersCopyWithImpl<$Res> implements $TwistersCopyWith<$Res> {
  _$TwistersCopyWithImpl(this._value, this._then);

  final Twisters _value;
  // ignore: unused_field
  final $Res Function(Twisters) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? body = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$TwistersCopyWith<$Res> implements $TwistersCopyWith<$Res> {
  factory _$TwistersCopyWith(_Twisters value, $Res Function(_Twisters) then) =
      __$TwistersCopyWithImpl<$Res>;
  @override
  $Res call({int id, String? body});
}

/// @nodoc
class __$TwistersCopyWithImpl<$Res> extends _$TwistersCopyWithImpl<$Res>
    implements _$TwistersCopyWith<$Res> {
  __$TwistersCopyWithImpl(_Twisters _value, $Res Function(_Twisters) _then)
      : super(_value, (v) => _then(v as _Twisters));

  @override
  _Twisters get _value => super._value as _Twisters;

  @override
  $Res call({
    Object? id = freezed,
    Object? body = freezed,
  }) {
    return _then(_Twisters(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Twisters implements _Twisters {
  const _$_Twisters({required this.id, this.body});

  factory _$_Twisters.fromJson(Map<String, dynamic> json) =>
      _$$_TwistersFromJson(json);

  @override
  final int id;
  @override
  final String? body;

  @override
  String toString() {
    return 'Twisters(id: $id, body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Twisters &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.body, body));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(body));

  @JsonKey(ignore: true)
  @override
  _$TwistersCopyWith<_Twisters> get copyWith =>
      __$TwistersCopyWithImpl<_Twisters>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TwistersToJson(this);
  }
}

abstract class _Twisters implements Twisters {
  const factory _Twisters({required int id, String? body}) = _$_Twisters;

  factory _Twisters.fromJson(Map<String, dynamic> json) = _$_Twisters.fromJson;

  @override
  int get id;
  @override
  String? get body;
  @override
  @JsonKey(ignore: true)
  _$TwistersCopyWith<_Twisters> get copyWith =>
      throw _privateConstructorUsedError;
}
