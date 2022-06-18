// ignore_for_file: avoid_dynamic_calls

import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:kids_education/data/exceptions.dart';

import 'package:kids_education/data/model/book.dart';


class BookRepo {
  Future<List<Book>> getBookInfo() async {
    final dio = Dio();
    dio.options.headers['Accept'] = "application/json";
    try {
      final response = await dio.get(
        'http://108.160.141.206/api/okulyk',
      );

       return (response.data['data'] as List)
          .map((e) => Book.fromJson(e as Map<String, dynamic>))
          .toList();
    } on DioError catch (error) {
      final data = jsonDecode(error.response.toString());
      throw ErrorException(message: data['message'].toString());
    }
  }
}
