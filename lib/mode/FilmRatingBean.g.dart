// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'FilmRatingBean.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FilmRatingBean _$FilmRatingBeanFromJson(Map<String, dynamic> json) {
  return FilmRatingBean(
      json['max'] as int,
      (json['average'] as num)?.toDouble(),
      json['stars'] as String,
      json['min'] as int);
}

Map<String, dynamic> _$FilmRatingBeanToJson(FilmRatingBean instance) =>
    <String, dynamic>{
      'max': instance.max,
      'average': instance.average,
      'stars': instance.stars,
      'min': instance.min
    };
