// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'HomeBannerBean.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeBannerBean _$HomeBannerBeanFromJson(Map<String, dynamic> json) {
  return HomeBannerBean(
      (json['data'] as List)
          ?.map((e) => e == null
              ? null
              : HomeBannerDataBean.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      json['errorCode'] as int,
      json['errorMsg'] as String);
}

Map<String, dynamic> _$HomeBannerBeanToJson(HomeBannerBean instance) =>
    <String, dynamic>{
      'data': instance.data,
      'errorCode': instance.errorCode,
      'errorMsg': instance.errorMsg
    };
