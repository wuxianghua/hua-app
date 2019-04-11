// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'NewsStoryBean.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewsStoryBean _$NewsStoryBeanFromJson(Map<String, dynamic> json) {
  return NewsStoryBean(
      json['title'] as String,
      json['ga_prefix'] as String,
      (json['images'] as List)?.map((e) => e as String)?.toList(),
      json['id'] as num,
      json['type'] as int,
      json['multipic'] as bool);
}

Map<String, dynamic> _$NewsStoryBeanToJson(NewsStoryBean instance) =>
    <String, dynamic>{
      'title': instance.title,
      'ga_prefix': instance.ga_prefix,
      'images': instance.images,
      'multipic': instance.multipic,
      'type': instance.type,
      'id': instance.id
    };
