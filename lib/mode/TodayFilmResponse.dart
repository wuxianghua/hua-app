import 'package:hua_film/mode/TodayFilmBean.dart';
import 'package:json_annotation/json_annotation.dart';
part 'TodayFilmResponse.g.dart';

@JsonSerializable()
class TodayFilmResponse{
  String reason;
  List<TodayFilmBean> result;
  int error_code;

  TodayFilmResponse(this.reason,this.result,this.error_code);

  factory TodayFilmResponse.fromJson(Map<String,dynamic> json) => _$TodayFilmResponseFromJson(json);

  Map<String,dynamic> toJson() => _$TodayFilmResponseToJson(this);
}