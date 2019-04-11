import 'package:json_annotation/json_annotation.dart';

part 'NewsStoryBean.g.dart';
@JsonSerializable()
class NewsStoryBean{
  String title;
  String ga_prefix;
  List<String> images;
  bool multipic;
  int type;
  num id;

  NewsStoryBean(this.title,this.ga_prefix,this.images,this.id,this.type,this.multipic);

  factory NewsStoryBean.fromJson(Map<String,dynamic> json) => _$NewsStoryBeanFromJson(json);

  Map<String,dynamic> toJson() => _$NewsStoryBeanToJson(this);
}