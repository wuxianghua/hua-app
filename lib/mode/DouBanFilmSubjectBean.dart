import 'package:hua_film/mode/FilmCastBean.dart';
import 'package:hua_film/mode/FilmImageBean.dart';
import 'package:hua_film/mode/FilmRatingBean.dart';
import 'package:json_annotation/json_annotation.dart';
part 'DouBanFilmSubjectBean.g.dart';
@JsonSerializable()
class DouBanFilmSubjectBean{
  FilmRatingBean rating;
  List<String> genres;
  String title;
  List<FilmCastBean> casts;
  int collect_count;
  String original_title;
  String subtype;
  List<FilmCastBean> directors;
  String year;
  FilmImageBean images;
  String alt;
  String id;

  DouBanFilmSubjectBean(this.rating,this.genres,this.title,this.casts,this.collect_count,this.original_title,
      this.subtype,this.directors,this.year,this.images,this.id);

  factory DouBanFilmSubjectBean.fromJson(Map<String,dynamic> json) => _$DouBanFilmSubjectBeanFromJson(json);

  Map<String,dynamic> toJson() => _$DouBanFilmSubjectBeanToJson(this);
}