part of 'book_cubit.dart';

@freezed
class BookState with _$BookState {
  const factory BookState.initialState() = InitialState;
  const factory BookState.loadingState() = LoadingState;
  const factory BookState.loadedState({
    required List<Book> book,
  }) = LoadedState;
  const factory BookState.errorState({required String message}) = ErrorState;
}
