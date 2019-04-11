// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'DouBanFilmBean.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DouBanFilmBean _$DouBanFilmBeanFromJson(Map<String, dynamic> json) {
  return DouBanFilmBean(
      json['count'] as int,
      json['start'] as int,
      json['total'] as int,
      json['title'] as String,
      (json['subjects'] as List)
          ?.map((e) => e == null
              ? null
              : DouBanFilmSubjectBean.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$DouBanFilmBeanToJson(DouBanFilmBean instance) =>
    <String, dynamic>{
      'count': instance.count,
      'start': instance.start,
      'total': instance.total,
      'title': instance.title,
      'subjects': instance.subjects
    };
