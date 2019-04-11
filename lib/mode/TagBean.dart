import 'package:json_annotation/json_annotation.dart';
part 'TagBean.g.dart';

@JsonSerializable()
class TagBean{
  String name;
  String url;

  TagBean(this.name,this.url);

  factory TagBean.fromJson(Map<String,dynamic> json) => _$TagBeanFromJson(json);

  Map<String,dynamic> toJson() => _$TagBeanToJson(this);
}