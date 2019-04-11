import 'package:hua_film/mode/HomeBannerDataBean.dart';
import 'package:json_annotation/json_annotation.dart';
part 'HomeBannerBean.g.dart';
@JsonSerializable()
class HomeBannerBean{
  List<HomeBannerDataBean> data;
  int errorCode;
  String errorMsg;

  HomeBannerBean(this.data,this.errorCode,this.errorMsg);

  factory HomeBannerBean.fromJson(Map<String,dynamic> json) => _$HomeBannerBeanFromJson(json);

  Map<String,dynamic> toJson() => _$HomeBannerBeanToJson(this);
}