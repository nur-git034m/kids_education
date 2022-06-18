import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kids_education/data/model/sound.dart';

part 'book.freezed.dart';

part 'book.g.dart';

@freezed
abstract class Book with _$Book {
  const factory Book({
     String? image,
     List<String>? sounds,
  }) = _Book;

  factory Book.fromJson(Map<String, dynamic> json) => _$BookFromJson(json);
}
