// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'DouBanFilmSubjectBean.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DouBanFilmSubjectBean _$DouBanFilmSubjectBeanFromJson(
    Map<String, dynamic> json) {
  return DouBanFilmSubjectBean(
      json['rating'] == null
          ? null
          : FilmRatingBean.fromJson(json['rating'] as Map<String, dynamic>),
      (json['genres'] as List)?.map((e) => e as String)?.toList(),
      json['title'] as String,
      (json['casts'] as List)
          ?.map((e) => e == null
              ? null
              : FilmCastBean.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      json['collect_count'] as int,
      json['original_title'] as String,
      json['subtype'] as String,
      (json['directors'] as List)
          ?.map((e) => e == null
              ? null
              : FilmCastBean.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      json['year'] as String,
      json['images'] == null
          ? null
          : FilmImageBean.fromJson(json['images'] as Map<String, dynamic>),
      json['id'] as String)
    ..alt = json['alt'] as String;
}

Map<String, dynamic> _$DouBanFilmSubjectBeanToJson(
        DouBanFilmSubjectBean instance) =>
    <String, dynamic>{
      'rating': instance.rating,
      'genres': instance.genres,
      'title': instance.title,
      'casts': instance.casts,
      'collect_count': instance.collect_count,
      'original_title': instance.original_title,
      'subtype': instance.subtype,
      'directors': instance.directors,
      'year': instance.year,
      'images': instance.images,
      'alt': instance.alt,
      'id': instance.id
    };
