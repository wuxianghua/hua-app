
import 'package:hua_film/mode/NewsStoryBean.dart';
import 'package:json_annotation/json_annotation.dart';

part 'NewsHistoryBean.g.dart';
@JsonSerializable()
class NewsHistoryBean{
  String date;
  List<NewsStoryBean> stories;

  NewsHistoryBean(this.date,this.stories);

  factory NewsHistoryBean.fromJson(Map<String,dynamic> json) => _$NewsHistoryBeanFromJson(json);

  Map<String,dynamic> toJson() => _$NewsHistoryBeanToJson(this);
}