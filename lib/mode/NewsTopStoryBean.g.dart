// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'NewsTopStoryBean.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewsTopStoryBean _$NewsTopStoryBeanFromJson(Map<String, dynamic> json) {
  return NewsTopStoryBean(json['type'] as int, json['image'] as String,
      json['ga_prefix'] as String, json['title'] as String, json['id'] as num);
}

Map<String, dynamic> _$NewsTopStoryBeanToJson(NewsTopStoryBean instance) =>
    <String, dynamic>{
      'title': instance.title,
      'ga_prefix': instance.ga_prefix,
      'image': instance.image,
      'type': instance.type,
      'id': instance.id
    };
