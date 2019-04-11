// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TodayFilmBean.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TodayFilmBean _$TodayFilmBeanFromJson(Map<String, dynamic> json) {
  return TodayFilmBean(json['movieId'] as String, json['movieName'] as String,
      json['pic_url'] as String);
}

Map<String, dynamic> _$TodayFilmBeanToJson(TodayFilmBean instance) =>
    <String, dynamic>{
      'movieId': instance.movieId,
      'movieName': instance.movieName,
      'pic_url': instance.pic_url
    };
