// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'animals.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Animals _$AnimalsFromJson(Map<String, dynamic> json) {
  return _Animals.fromJson(json);
}

/// @nodoc
class _$AnimalsTearOff {
  const _$AnimalsTearOff();

  _Animals call(
      {required int id,
      String? name,
      String? description,
      String? color,
      @JsonKey(name: 'icon_image') String? iconImage,
      String? paragraph,
      String? lifespan,
      String? speed}) {
    return _Animals(
      id: id,
      name: name,
      description: description,
      color: color,
      iconImage: iconImage,
      paragraph: paragraph,
      lifespan: lifespan,
      speed: speed,
    );
  }

  Animals fromJson(Map<String, Object?> json) {
    return Animals.fromJson(json);
  }
}

/// @nodoc
const $Animals = _$AnimalsTearOff();

/// @nodoc
mixin _$Animals {
  int get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;
  @JsonKey(name: 'icon_image')
  String? get iconImage => throw _privateConstructorUsedError;
  String? get paragraph => throw _privateConstructorUsedError;
  String? get lifespan => throw _privateConstructorUsedError;
  String? get speed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnimalsCopyWith<Animals> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnimalsCopyWith<$Res> {
  factory $AnimalsCopyWith(Animals value, $Res Function(Animals) then) =
      _$AnimalsCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String? name,
      String? description,
      String? color,
      @JsonKey(name: 'icon_image') String? iconImage,
      String? paragraph,
      String? lifespan,
      String? speed});
}

/// @nodoc
class _$AnimalsCopyWithImpl<$Res> implements $AnimalsCopyWith<$Res> {
  _$AnimalsCopyWithImpl(this._value, this._then);

  final Animals _value;
  // ignore: unused_field
  final $Res Function(Animals) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? color = freezed,
    Object? iconImage = freezed,
    Object? paragraph = freezed,
    Object? lifespan = freezed,
    Object? speed = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      iconImage: iconImage == freezed
          ? _value.iconImage
          : iconImage // ignore: cast_nullable_to_non_nullable
              as String?,
      paragraph: paragraph == freezed
          ? _value.paragraph
          : paragraph // ignore: cast_nullable_to_non_nullable
              as String?,
      lifespan: lifespan == freezed
          ? _value.lifespan
          : lifespan // ignore: cast_nullable_to_non_nullable
              as String?,
      speed: speed == freezed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$AnimalsCopyWith<$Res> implements $AnimalsCopyWith<$Res> {
  factory _$AnimalsCopyWith(_Animals value, $Res Function(_Animals) then) =
      __$AnimalsCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String? name,
      String? description,
      String? color,
      @JsonKey(name: 'icon_image') String? iconImage,
      String? paragraph,
      String? lifespan,
      String? speed});
}

/// @nodoc
class __$AnimalsCopyWithImpl<$Res> extends _$AnimalsCopyWithImpl<$Res>
    implements _$AnimalsCopyWith<$Res> {
  __$AnimalsCopyWithImpl(_Animals _value, $Res Function(_Animals) _then)
      : super(_value, (v) => _then(v as _Animals));

  @override
  _Animals get _value => super._value as _Animals;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? color = freezed,
    Object? iconImage = freezed,
    Object? paragraph = freezed,
    Object? lifespan = freezed,
    Object? speed = freezed,
  }) {
    return _then(_Animals(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      iconImage: iconImage == freezed
          ? _value.iconImage
          : iconImage // ignore: cast_nullable_to_non_nullable
              as String?,
      paragraph: paragraph == freezed
          ? _value.paragraph
          : paragraph // ignore: cast_nullable_to_non_nullable
              as String?,
      lifespan: lifespan == freezed
          ? _value.lifespan
          : lifespan // ignore: cast_nullable_to_non_nullable
              as String?,
      speed: speed == freezed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Animals implements _Animals {
  const _$_Animals(
      {required this.id,
      this.name,
      this.description,
      this.color,
      @JsonKey(name: 'icon_image') this.iconImage,
      this.paragraph,
      this.lifespan,
      this.speed});

  factory _$_Animals.fromJson(Map<String, dynamic> json) =>
      _$$_AnimalsFromJson(json);

  @override
  final int id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? color;
  @override
  @JsonKey(name: 'icon_image')
  final String? iconImage;
  @override
  final String? paragraph;
  @override
  final String? lifespan;
  @override
  final String? speed;

  @override
  String toString() {
    return 'Animals(id: $id, name: $name, description: $description, color: $color, iconImage: $iconImage, paragraph: $paragraph, lifespan: $lifespan, speed: $speed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Animals &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.color, color) &&
            const DeepCollectionEquality().equals(other.iconImage, iconImage) &&
            const DeepCollectionEquality().equals(other.paragraph, paragraph) &&
            const DeepCollectionEquality().equals(other.lifespan, lifespan) &&
            const DeepCollectionEquality().equals(other.speed, speed));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(color),
      const DeepCollectionEquality().hash(iconImage),
      const DeepCollectionEquality().hash(paragraph),
      const DeepCollectionEquality().hash(lifespan),
      const DeepCollectionEquality().hash(speed));

  @JsonKey(ignore: true)
  @override
  _$AnimalsCopyWith<_Animals> get copyWith =>
      __$AnimalsCopyWithImpl<_Animals>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AnimalsToJson(this);
  }
}

abstract class _Animals implements Animals {
  const factory _Animals(
      {required int id,
      String? name,
      String? description,
      String? color,
      @JsonKey(name: 'icon_image') String? iconImage,
      String? paragraph,
      String? lifespan,
      String? speed}) = _$_Animals;

  factory _Animals.fromJson(Map<String, dynamic> json) = _$_Animals.fromJson;

  @override
  int get id;
  @override
  String? get name;
  @override
  String? get description;
  @override
  String? get color;
  @override
  @JsonKey(name: 'icon_image')
  String? get iconImage;
  @override
  String? get paragraph;
  @override
  String? get lifespan;
  @override
  String? get speed;
  @override
  @JsonKey(ignore: true)
  _$AnimalsCopyWith<_Animals> get copyWith =>
      throw _privateConstructorUsedError;
}
