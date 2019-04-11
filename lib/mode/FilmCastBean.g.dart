// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'FilmCastBean.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FilmCastBean _$FilmCastBeanFromJson(Map<String, dynamic> json) {
  return FilmCastBean(
      json['alt'] as String,
      json['avatars'] == null
          ? null
          : FilmAvatarBean.fromJson(json['avatars'] as Map<String, dynamic>),
      json['name'] as String,
      json['id'] as String);
}

Map<String, dynamic> _$FilmCastBeanToJson(FilmCastBean instance) =>
    <String, dynamic>{
      'alt': instance.alt,
      'avatars': instance.avatars,
      'name': instance.name,
      'id': instance.id
    };
