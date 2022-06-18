import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kids_education/data/exceptions.dart';
import 'package:kids_education/data/model/book.dart';
import 'package:kids_education/data/repositories/sound_repo.dart';

part 'book_state.dart';
part 'book_cubit.freezed.dart';

class BookCubit extends Cubit<BookState> {
  BookRepo bookRepo;
  BookCubit({required this.bookRepo}) : super(const InitialState());

  Future<void> getBookInfo() async {
    emit(const LoadingState());
    try {
      final List<Book> book = await bookRepo.getBookInfo();


      debugPrint(book.toString());
      emit(LoadedState(book: book));
    } on ErrorException catch (_) {
      emit(ErrorState(message: _.message));
    }
  }
}
