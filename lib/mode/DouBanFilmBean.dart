import 'package:hua_film/mode/DouBanFilmSubjectBean.dart';
import 'package:json_annotation/json_annotation.dart';
part 'DouBanFilmBean.g.dart';
@JsonSerializable()
class DouBanFilmBean{
  int count;
  int start;
  int total;
  String title;
  List<DouBanFilmSubjectBean> subjects;

  DouBanFilmBean(this.count,this.start,this.total,this.title,this.subjects);

  factory DouBanFilmBean.fromJson(Map<String,dynamic> json) => _$DouBanFilmBeanFromJson(json);

  Map<String,dynamic> toJson() => _$DouBanFilmBeanToJson(this);
}