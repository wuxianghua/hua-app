import 'package:json_annotation/json_annotation.dart';
part 'HomeBannerDataBean.g.dart';
@JsonSerializable()
class HomeBannerDataBean{
  String desc;
  int id;
  String imagePath;
  int isVisible;
  int order;
  String title;
  int type;
  String url;

  HomeBannerDataBean(this.desc,this.id,this.imagePath,this.isVisible,this.order,this.title,this.type,this.url);

  factory HomeBannerDataBean.fromJson(Map<String,dynamic> json) => _$HomeBannerDataBeanFromJson(json);

  Map<String,dynamic> toJson() => _$HomeBannerDataBeanToJson(this);
}