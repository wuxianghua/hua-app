import 'package:json_annotation/json_annotation.dart';

part 'NewsTopStoryBean.g.dart';
@JsonSerializable()
class NewsTopStoryBean{
  String title;
  String ga_prefix;
  String image;
  int type;
  num id;

  NewsTopStoryBean(this.type,this.image,this.ga_prefix,this.title,this.id);

  factory NewsTopStoryBean.fromJson(Map<String,dynamic> json) => _$NewsTopStoryBeanFromJson(json);

  Map<String,dynamic> toJson() => _$NewsTopStoryBeanToJson(this);
}