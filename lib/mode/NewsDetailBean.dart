
import 'package:json_annotation/json_annotation.dart';

part 'NewsDetailBean.g.dart';
@JsonSerializable()
class NewsDetailBean{
  String body;
  String image_source;
  String title;
  String image;
  String share_url;
  List<String> js;
  String ga_prefix;
  List<String> images;
  int type;
  int id;
  List<String> css;

  NewsDetailBean(this.body,this.image_source,this.title,
      this.image,this.share_url,this.js,this.ga_prefix,this.images,this.type,this.id,this.css);

  factory NewsDetailBean.fromJson(Map<String,dynamic> json) => _$NewsDetailBeanFromJson(json);

  Map<String,dynamic> toJson() => _$NewsDetailBeanToJson(this);
}