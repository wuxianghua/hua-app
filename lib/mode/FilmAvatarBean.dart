import 'package:json_annotation/json_annotation.dart';
part 'FilmAvatarBean.g.dart';
@JsonSerializable()
class FilmAvatarBean{
  String small;
  String large;
  String medium;

  FilmAvatarBean(this.small,this.large,this.medium);

  factory FilmAvatarBean.fromJson(Map<String,dynamic> json) => _$FilmAvatarBeanFromJson(json);

  Map<String,dynamic> toJson() => _$FilmAvatarBeanToJson(this);
}