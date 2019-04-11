import 'package:json_annotation/json_annotation.dart';
part 'FilmRatingBean.g.dart';
@JsonSerializable()
class FilmRatingBean {
  int max;
  double average;
  String stars;
  int min;

  FilmRatingBean(this.max,this.average,this.stars,this.min);

  factory FilmRatingBean.fromJson(Map<String,dynamic> json) => _$FilmRatingBeanFromJson(json);

  Map<String,dynamic> toJson() => _$FilmRatingBeanToJson(this);
}