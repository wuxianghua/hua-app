// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'NewsLatestBean.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewsLatestBean _$NewsLatestBeanFromJson(Map<String, dynamic> json) {
  return NewsLatestBean(
      json['date'] as String,
      (json['stories'] as List)
          ?.map((e) => e == null
              ? null
              : NewsStoryBean.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      (json['top_stories'] as List)
          ?.map((e) => e == null
              ? null
              : NewsTopStoryBean.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$NewsLatestBeanToJson(NewsLatestBean instance) =>
    <String, dynamic>{
      'date': instance.date,
      'stories': instance.stories,
      'top_stories': instance.top_stories
    };
