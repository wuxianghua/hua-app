import 'package:hua_film/mode/NewsStoryBean.dart';
import 'package:hua_film/mode/NewsTopStoryBean.dart';
import 'package:json_annotation/json_annotation.dart';

part 'NewsLatestBean.g.dart';
@JsonSerializable()
class NewsLatestBean{
  String date;
  List<NewsStoryBean> stories;
  List<NewsTopStoryBean> top_stories;

  NewsLatestBean(this.date,this.stories,this.top_stories);

  factory NewsLatestBean.fromJson(Map<String,dynamic> json) => _$NewsLatestBeanFromJson(json);

  Map<String,dynamic> toJson() => _$NewsLatestBeanToJson(this);
}