import 'package:hua_film/mode/CityBean.dart';
import 'package:json_annotation/json_annotation.dart';
part 'CityResponse.g.dart';

@JsonSerializable()
class CityResponse{
  String reason;
  List<CityBean> result;
  int error_code;

  CityResponse(this.reason,this.result,this.error_code);

  factory CityResponse.fromJson(Map<String,dynamic> json) => _$CityResponseFromJson(json);

  Map<String,dynamic> toJson() => _$CityResponseToJson(this);
}