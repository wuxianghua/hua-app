import 'package:json_annotation/json_annotation.dart';
part 'FilmImageBean.g.dart';
@JsonSerializable()
class FilmImageBean{
  String small;
  String large;
  String medium;

  FilmImageBean(this.small,this.large,this.medium);

  factory FilmImageBean.fromJson(Map<String,dynamic> json) => _$FilmImageBeanFromJson(json);

  Map<String,dynamic> toJson() => _$FilmImageBeanToJson(this);
}