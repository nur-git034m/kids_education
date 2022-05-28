import 'package:freezed_annotation/freezed_annotation.dart';

part 'animals.freezed.dart';

part 'animals.g.dart';

@freezed
abstract class Animals with _$Animals {
  const factory Animals({
    required int id,
    String? name,
    String? description,
    String? color,
    @JsonKey(name: 'icon_image') String? iconImage,
    String? paragraph,
    String? lifespan,
    String? speed,

    // City city,
  }) = _Animals;

  factory Animals.fromJson(Map<String, dynamic> json) =>
      _$AnimalsFromJson(json);
}
