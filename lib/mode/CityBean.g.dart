// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'CityBean.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CityBean _$CityBeanFromJson(Map<String, dynamic> json) {
  return CityBean(
      json['id'] as String,
      json['city_name'] as String,
      json['city_pre'] as String,
      json['city_pinyin'] as String,
      json['city_short'] as String,
      json['count'] as String);
}

Map<String, dynamic> _$CityBeanToJson(CityBean instance) => <String, dynamic>{
      'id': instance.id,
      'city_name': instance.city_name,
      'city_pre': instance.city_pre,
      'city_pinyin': instance.city_pinyin,
      'city_short': instance.city_short,
      'count': instance.count
    };
