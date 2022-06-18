import 'package:freezed_annotation/freezed_annotation.dart';

part 'sound.freezed.dart';

part 'sound.g.dart';

@freezed
abstract class Sound with _$Sound {
  const factory Sound({

     String? sounds,
  
  }) = _Sound;

  factory Sound.fromJson(Map<String, dynamic> json) =>
      _$SoundFromJson(json);
}
