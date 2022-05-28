import 'package:freezed_annotation/freezed_annotation.dart';

part 'twisters.freezed.dart';

part 'twisters.g.dart';

@freezed
abstract class Twisters with _$Twisters {
  const factory Twisters({
    required int id,
    String? body,

    // City city,
  }) = _Twisters;

  factory Twisters.fromJson(Map<String, dynamic> json) =>
      _$TwistersFromJson(json);
}
