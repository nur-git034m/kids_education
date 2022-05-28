// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'animals.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Animals _$$_AnimalsFromJson(Map<String, dynamic> json) => _$_Animals(
      id: json['id'] as int,
      name: json['name'] as String?,
      description: json['description'] as String?,
      color: json['color'] as String?,
      iconImage: json['icon_image'] as String?,
      paragraph: json['paragraph'] as String?,
      lifespan: json['lifespan'] as String?,
      speed: json['speed'] as String?,
    );

Map<String, dynamic> _$$_AnimalsToJson(_$_Animals instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'color': instance.color,
      'icon_image': instance.iconImage,
      'paragraph': instance.paragraph,
      'lifespan': instance.lifespan,
      'speed': instance.speed,
    };
