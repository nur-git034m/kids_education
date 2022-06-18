// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sound.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Sound _$SoundFromJson(Map<String, dynamic> json) {
  return _Sound.fromJson(json);
}

/// @nodoc
class _$SoundTearOff {
  const _$SoundTearOff();

  _Sound call({String? sounds}) {
    return _Sound(
      sounds: sounds,
    );
  }

  Sound fromJson(Map<String, Object?> json) {
    return Sound.fromJson(json);
  }
}

/// @nodoc
const $Sound = _$SoundTearOff();

/// @nodoc
mixin _$Sound {
  String? get sounds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SoundCopyWith<Sound> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SoundCopyWith<$Res> {
  factory $SoundCopyWith(Sound value, $Res Function(Sound) then) =
      _$SoundCopyWithImpl<$Res>;
  $Res call({String? sounds});
}

/// @nodoc
class _$SoundCopyWithImpl<$Res> implements $SoundCopyWith<$Res> {
  _$SoundCopyWithImpl(this._value, this._then);

  final Sound _value;
  // ignore: unused_field
  final $Res Function(Sound) _then;

  @override
  $Res call({
    Object? sounds = freezed,
  }) {
    return _then(_value.copyWith(
      sounds: sounds == freezed
          ? _value.sounds
          : sounds // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$SoundCopyWith<$Res> implements $SoundCopyWith<$Res> {
  factory _$SoundCopyWith(_Sound value, $Res Function(_Sound) then) =
      __$SoundCopyWithImpl<$Res>;
  @override
  $Res call({String? sounds});
}

/// @nodoc
class __$SoundCopyWithImpl<$Res> extends _$SoundCopyWithImpl<$Res>
    implements _$SoundCopyWith<$Res> {
  __$SoundCopyWithImpl(_Sound _value, $Res Function(_Sound) _then)
      : super(_value, (v) => _then(v as _Sound));

  @override
  _Sound get _value => super._value as _Sound;

  @override
  $Res call({
    Object? sounds = freezed,
  }) {
    return _then(_Sound(
      sounds: sounds == freezed
          ? _value.sounds
          : sounds // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Sound implements _Sound {
  const _$_Sound({this.sounds});

  factory _$_Sound.fromJson(Map<String, dynamic> json) =>
      _$$_SoundFromJson(json);

  @override
  final String? sounds;

  @override
  String toString() {
    return 'Sound(sounds: $sounds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Sound &&
            const DeepCollectionEquality().equals(other.sounds, sounds));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(sounds));

  @JsonKey(ignore: true)
  @override
  _$SoundCopyWith<_Sound> get copyWith =>
      __$SoundCopyWithImpl<_Sound>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SoundToJson(this);
  }
}

abstract class _Sound implements Sound {
  const factory _Sound({String? sounds}) = _$_Sound;

  factory _Sound.fromJson(Map<String, dynamic> json) = _$_Sound.fromJson;

  @override
  String? get sounds;
  @override
  @JsonKey(ignore: true)
  _$SoundCopyWith<_Sound> get copyWith => throw _privateConstructorUsedError;
}
