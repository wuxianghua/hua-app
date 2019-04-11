// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'CityResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CityResponse _$CityResponseFromJson(Map<String, dynamic> json) {
  return CityResponse(
      json['reason'] as String,
      (json['result'] as List)
          ?.map((e) =>
              e == null ? null : CityBean.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      json['error_code'] as int);
}

Map<String, dynamic> _$CityResponseToJson(CityResponse instance) =>
    <String, dynamic>{
      'reason': instance.reason,
      'result': instance.result,
      'error_code': instance.error_code
    };
