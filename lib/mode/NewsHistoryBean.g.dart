// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'NewsHistoryBean.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewsHistoryBean _$NewsHistoryBeanFromJson(Map<String, dynamic> json) {
  return NewsHistoryBean(
      json['date'] as String,
      (json['stories'] as List)
          ?.map((e) => e == null
              ? null
              : NewsStoryBean.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$NewsHistoryBeanToJson(NewsHistoryBean instance) =>
    <String, dynamic>{'date': instance.date, 'stories': instance.stories};
