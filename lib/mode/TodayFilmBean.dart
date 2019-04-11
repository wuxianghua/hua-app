
import 'package:json_annotation/json_annotation.dart';
part 'TodayFilmBean.g.dart';
@JsonSerializable()
class TodayFilmBean{
  String movieId;
  String movieName;
  String pic_url;

  TodayFilmBean(this.movieId,this.movieName,this.pic_url);

  factory TodayFilmBean.fromJson(Map<String,dynamic> json) => _$TodayFilmBeanFromJson(json);

  Map<String,dynamic> toJson() => _$TodayFilmBeanToJson(this);
}