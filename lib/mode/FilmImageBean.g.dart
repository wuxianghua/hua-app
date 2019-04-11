// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'FilmImageBean.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FilmImageBean _$FilmImageBeanFromJson(Map<String, dynamic> json) {
  return FilmImageBean(json['small'] as String, json['large'] as String,
      json['medium'] as String);
}

Map<String, dynamic> _$FilmImageBeanToJson(FilmImageBean instance) =>
    <String, dynamic>{
      'small': instance.small,
      'large': instance.large,
      'medium': instance.medium
    };
