part of 'animal_cubit.dart';

@freezed
class AnimalState with _$AnimalState {
  const factory AnimalState.initialState() = InitialState;
  const factory AnimalState.loadingState() = LoadingState;
  const factory AnimalState.loadedState({
    required List<Animals> animal,
  }) = LoadedState;
  const factory AnimalState.errorState({required String message}) = ErrorState;
}
