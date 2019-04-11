// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'HomeArticalBean.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeArticalBean _$HomeArticalBeanFromJson(Map<String, dynamic> json) {
  return HomeArticalBean(
      json['data'] == null
          ? null
          : HomeArticalDataBean.fromJson(json['data'] as Map<String, dynamic>),
      json['errorCode'] as int,
      json['errorMsg'] as String);
}

Map<String, dynamic> _$HomeArticalBeanToJson(HomeArticalBean instance) =>
    <String, dynamic>{
      'data': instance.data,
      'errorCode': instance.errorCode,
      'errorMsg': instance.errorMsg
    };
