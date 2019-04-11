import 'package:hua_film/mode/FilmAvatarBean.dart';
import 'package:json_annotation/json_annotation.dart';
part 'FilmCastBean.g.dart';
@JsonSerializable()
class FilmCastBean{
  String alt;
  FilmAvatarBean avatars;
  String name;
  String id;

  FilmCastBean(this.alt,this.avatars,this.name,this.id);

  factory FilmCastBean.fromJson(Map<String,dynamic> json) => _$FilmCastBeanFromJson(json);

  Map<String,dynamic> toJson() => _$FilmCastBeanToJson(this);
}