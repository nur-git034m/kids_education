part of 'twister_cubit.dart';

@freezed
class TwisterState with _$TwisterState {
  const factory TwisterState.initialState() = InitialState;
  const factory TwisterState.loadingState() = LoadingState;
  const factory TwisterState.loadedState({
    required List<Twisters> twisters,
  }) = LoadedState;
  const factory TwisterState.errorState({required String message}) = ErrorState;
}
