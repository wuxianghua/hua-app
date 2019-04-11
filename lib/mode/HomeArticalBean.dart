import 'package:hua_film/mode/HomeArticalDataBean.dart';
import 'package:json_annotation/json_annotation.dart';
part 'HomeArticalBean.g.dart';

@JsonSerializable()
class HomeArticalBean{
  HomeArticalDataBean data;
  int errorCode;
  String errorMsg;

  HomeArticalBean(this.data,this.errorCode,this.errorMsg);

  factory HomeArticalBean.fromJson(Map<String,dynamic> json) => _$HomeArticalBeanFromJson(json);

  Map<String,dynamic> toJson() => _$HomeArticalBeanToJson(this);
}