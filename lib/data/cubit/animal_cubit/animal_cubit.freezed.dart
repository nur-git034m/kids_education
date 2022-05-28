// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'animal_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AnimalStateTearOff {
  const _$AnimalStateTearOff();

  InitialState initialState() {
    return const InitialState();
  }

  LoadingState loadingState() {
    return const LoadingState();
  }

  LoadedState loadedState({required List<Animals> animal}) {
    return LoadedState(
      animal: animal,
    );
  }

  ErrorState errorState({required String message}) {
    return ErrorState(
      message: message,
    );
  }
}

/// @nodoc
const $AnimalState = _$AnimalStateTearOff();

/// @nodoc
mixin _$AnimalState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() loadingState,
    required TResult Function(List<Animals> animal) loadedState,
    required TResult Function(String message) errorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function(List<Animals> animal)? loadedState,
    TResult Function(String message)? errorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function(List<Animals> animal)? loadedState,
    TResult Function(String message)? errorState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initialState,
    required TResult Function(LoadingState value) loadingState,
    required TResult Function(LoadedState value) loadedState,
    required TResult Function(ErrorState value) errorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialState value)? initialState,
    TResult Function(LoadingState value)? loadingState,
    TResult Function(LoadedState value)? loadedState,
    TResult Function(ErrorState value)? errorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initialState,
    TResult Function(LoadingState value)? loadingState,
    TResult Function(LoadedState value)? loadedState,
    TResult Function(ErrorState value)? errorState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnimalStateCopyWith<$Res> {
  factory $AnimalStateCopyWith(
          AnimalState value, $Res Function(AnimalState) then) =
      _$AnimalStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AnimalStateCopyWithImpl<$Res> implements $AnimalStateCopyWith<$Res> {
  _$AnimalStateCopyWithImpl(this._value, this._then);

  final AnimalState _value;
  // ignore: unused_field
  final $Res Function(AnimalState) _then;
}

/// @nodoc
abstract class $InitialStateCopyWith<$Res> {
  factory $InitialStateCopyWith(
          InitialState value, $Res Function(InitialState) then) =
      _$InitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialStateCopyWithImpl<$Res> extends _$AnimalStateCopyWithImpl<$Res>
    implements $InitialStateCopyWith<$Res> {
  _$InitialStateCopyWithImpl(
      InitialState _value, $Res Function(InitialState) _then)
      : super(_value, (v) => _then(v as InitialState));

  @override
  InitialState get _value => super._value as InitialState;
}

/// @nodoc

class _$InitialState implements InitialState {
  const _$InitialState();

  @override
  String toString() {
    return 'AnimalState.initialState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is InitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() loadingState,
    required TResult Function(List<Animals> animal) loadedState,
    required TResult Function(String message) errorState,
  }) {
    return initialState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function(List<Animals> animal)? loadedState,
    TResult Function(String message)? errorState,
  }) {
    return initialState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function(List<Animals> animal)? loadedState,
    TResult Function(String message)? errorState,
    required TResult orElse(),
  }) {
    if (initialState != null) {
      return initialState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initialState,
    required TResult Function(LoadingState value) loadingState,
    required TResult Function(LoadedState value) loadedState,
    required TResult Function(ErrorState value) errorState,
  }) {
    return initialState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialState value)? initialState,
    TResult Function(LoadingState value)? loadingState,
    TResult Function(LoadedState value)? loadedState,
    TResult Function(ErrorState value)? errorState,
  }) {
    return initialState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initialState,
    TResult Function(LoadingState value)? loadingState,
    TResult Function(LoadedState value)? loadedState,
    TResult Function(ErrorState value)? errorState,
    required TResult orElse(),
  }) {
    if (initialState != null) {
      return initialState(this);
    }
    return orElse();
  }
}

abstract class InitialState implements AnimalState {
  const factory InitialState() = _$InitialState;
}

/// @nodoc
abstract class $LoadingStateCopyWith<$Res> {
  factory $LoadingStateCopyWith(
          LoadingState value, $Res Function(LoadingState) then) =
      _$LoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingStateCopyWithImpl<$Res> extends _$AnimalStateCopyWithImpl<$Res>
    implements $LoadingStateCopyWith<$Res> {
  _$LoadingStateCopyWithImpl(
      LoadingState _value, $Res Function(LoadingState) _then)
      : super(_value, (v) => _then(v as LoadingState));

  @override
  LoadingState get _value => super._value as LoadingState;
}

/// @nodoc

class _$LoadingState implements LoadingState {
  const _$LoadingState();

  @override
  String toString() {
    return 'AnimalState.loadingState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() loadingState,
    required TResult Function(List<Animals> animal) loadedState,
    required TResult Function(String message) errorState,
  }) {
    return loadingState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function(List<Animals> animal)? loadedState,
    TResult Function(String message)? errorState,
  }) {
    return loadingState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function(List<Animals> animal)? loadedState,
    TResult Function(String message)? errorState,
    required TResult orElse(),
  }) {
    if (loadingState != null) {
      return loadingState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initialState,
    required TResult Function(LoadingState value) loadingState,
    required TResult Function(LoadedState value) loadedState,
    required TResult Function(ErrorState value) errorState,
  }) {
    return loadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialState value)? initialState,
    TResult Function(LoadingState value)? loadingState,
    TResult Function(LoadedState value)? loadedState,
    TResult Function(ErrorState value)? errorState,
  }) {
    return loadingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initialState,
    TResult Function(LoadingState value)? loadingState,
    TResult Function(LoadedState value)? loadedState,
    TResult Function(ErrorState value)? errorState,
    required TResult orElse(),
  }) {
    if (loadingState != null) {
      return loadingState(this);
    }
    return orElse();
  }
}

abstract class LoadingState implements AnimalState {
  const factory LoadingState() = _$LoadingState;
}

/// @nodoc
abstract class $LoadedStateCopyWith<$Res> {
  factory $LoadedStateCopyWith(
          LoadedState value, $Res Function(LoadedState) then) =
      _$LoadedStateCopyWithImpl<$Res>;
  $Res call({List<Animals> animal});
}

/// @nodoc
class _$LoadedStateCopyWithImpl<$Res> extends _$AnimalStateCopyWithImpl<$Res>
    implements $LoadedStateCopyWith<$Res> {
  _$LoadedStateCopyWithImpl(
      LoadedState _value, $Res Function(LoadedState) _then)
      : super(_value, (v) => _then(v as LoadedState));

  @override
  LoadedState get _value => super._value as LoadedState;

  @override
  $Res call({
    Object? animal = freezed,
  }) {
    return _then(LoadedState(
      animal: animal == freezed
          ? _value.animal
          : animal // ignore: cast_nullable_to_non_nullable
              as List<Animals>,
    ));
  }
}

/// @nodoc

class _$LoadedState implements LoadedState {
  const _$LoadedState({required this.animal});

  @override
  final List<Animals> animal;

  @override
  String toString() {
    return 'AnimalState.loadedState(animal: $animal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadedState &&
            const DeepCollectionEquality().equals(other.animal, animal));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(animal));

  @JsonKey(ignore: true)
  @override
  $LoadedStateCopyWith<LoadedState> get copyWith =>
      _$LoadedStateCopyWithImpl<LoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() loadingState,
    required TResult Function(List<Animals> animal) loadedState,
    required TResult Function(String message) errorState,
  }) {
    return loadedState(animal);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function(List<Animals> animal)? loadedState,
    TResult Function(String message)? errorState,
  }) {
    return loadedState?.call(animal);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function(List<Animals> animal)? loadedState,
    TResult Function(String message)? errorState,
    required TResult orElse(),
  }) {
    if (loadedState != null) {
      return loadedState(animal);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initialState,
    required TResult Function(LoadingState value) loadingState,
    required TResult Function(LoadedState value) loadedState,
    required TResult Function(ErrorState value) errorState,
  }) {
    return loadedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialState value)? initialState,
    TResult Function(LoadingState value)? loadingState,
    TResult Function(LoadedState value)? loadedState,
    TResult Function(ErrorState value)? errorState,
  }) {
    return loadedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initialState,
    TResult Function(LoadingState value)? loadingState,
    TResult Function(LoadedState value)? loadedState,
    TResult Function(ErrorState value)? errorState,
    required TResult orElse(),
  }) {
    if (loadedState != null) {
      return loadedState(this);
    }
    return orElse();
  }
}

abstract class LoadedState implements AnimalState {
  const factory LoadedState({required List<Animals> animal}) = _$LoadedState;

  List<Animals> get animal;
  @JsonKey(ignore: true)
  $LoadedStateCopyWith<LoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorStateCopyWith<$Res> {
  factory $ErrorStateCopyWith(
          ErrorState value, $Res Function(ErrorState) then) =
      _$ErrorStateCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$ErrorStateCopyWithImpl<$Res> extends _$AnimalStateCopyWithImpl<$Res>
    implements $ErrorStateCopyWith<$Res> {
  _$ErrorStateCopyWithImpl(ErrorState _value, $Res Function(ErrorState) _then)
      : super(_value, (v) => _then(v as ErrorState));

  @override
  ErrorState get _value => super._value as ErrorState;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(ErrorState(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorState implements ErrorState {
  const _$ErrorState({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'AnimalState.errorState(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ErrorState &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $ErrorStateCopyWith<ErrorState> get copyWith =>
      _$ErrorStateCopyWithImpl<ErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() loadingState,
    required TResult Function(List<Animals> animal) loadedState,
    required TResult Function(String message) errorState,
  }) {
    return errorState(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function(List<Animals> animal)? loadedState,
    TResult Function(String message)? errorState,
  }) {
    return errorState?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function(List<Animals> animal)? loadedState,
    TResult Function(String message)? errorState,
    required TResult orElse(),
  }) {
    if (errorState != null) {
      return errorState(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initialState,
    required TResult Function(LoadingState value) loadingState,
    required TResult Function(LoadedState value) loadedState,
    required TResult Function(ErrorState value) errorState,
  }) {
    return errorState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialState value)? initialState,
    TResult Function(LoadingState value)? loadingState,
    TResult Function(LoadedState value)? loadedState,
    TResult Function(ErrorState value)? errorState,
  }) {
    return errorState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initialState,
    TResult Function(LoadingState value)? loadingState,
    TResult Function(LoadedState value)? loadedState,
    TResult Function(ErrorState value)? errorState,
    required TResult orElse(),
  }) {
    if (errorState != null) {
      return errorState(this);
    }
    return orElse();
  }
}

abstract class ErrorState implements AnimalState {
  const factory ErrorState({required String message}) = _$ErrorState;

  String get message;
  @JsonKey(ignore: true)
  $ErrorStateCopyWith<ErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}
