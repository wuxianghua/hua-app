// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'NewsDetailBean.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewsDetailBean _$NewsDetailBeanFromJson(Map<String, dynamic> json) {
  return NewsDetailBean(
      json['body'] as String,
      json['image_source'] as String,
      json['title'] as String,
      json['image'] as String,
      json['share_url'] as String,
      (json['js'] as List)?.map((e) => e as String)?.toList(),
      json['ga_prefix'] as String,
      (json['images'] as List)?.map((e) => e as String)?.toList(),
      json['type'] as int,
      json['id'] as int,
      (json['css'] as List)?.map((e) => e as String)?.toList());
}

Map<String, dynamic> _$NewsDetailBeanToJson(NewsDetailBean instance) =>
    <String, dynamic>{
      'body': instance.body,
      'image_source': instance.image_source,
      'title': instance.title,
      'image': instance.image,
      'share_url': instance.share_url,
      'js': instance.js,
      'ga_prefix': instance.ga_prefix,
      'images': instance.images,
      'type': instance.type,
      'id': instance.id,
      'css': instance.css
    };
