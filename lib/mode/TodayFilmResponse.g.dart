// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TodayFilmResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TodayFilmResponse _$TodayFilmResponseFromJson(Map<String, dynamic> json) {
  return TodayFilmResponse(
      json['reason'] as String,
      (json['result'] as List)
          ?.map((e) => e == null
              ? null
              : TodayFilmBean.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      json['error_code'] as int);
}

Map<String, dynamic> _$TodayFilmResponseToJson(TodayFilmResponse instance) =>
    <String, dynamic>{
      'reason': instance.reason,
      'result': instance.result,
      'error_code': instance.error_code
    };
