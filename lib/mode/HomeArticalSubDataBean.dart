import 'package:hua_film/mode/TagBean.dart';
import 'package:json_annotation/json_annotation.dart';
part 'HomeArticalSubDataBean.g.dart';
@JsonSerializable()
class HomeArticalSubDataBean{
  String apkLink;
  String author;
  int chapterId;
  String chapterName;
  bool collect;
  int courseId;
  String desc;
  String envelopePic;
  bool fresh;
  int id;
  String link;
  String niceDate;
  String origin;
  String prefix;
  String projectLink;
  int publishTime;
  int superChapterId;
  String superChapterName;
  List<TagBean> tags;
  String title;
  int type;
  int userId;
  int visible;
  int zan;

  HomeArticalSubDataBean(this.apkLink,this.author,this.chapterId,this.chapterName,this.collect,this.courseId,this.desc,
      this.envelopePic,this.fresh,this.id,this.link,this.niceDate,this.origin,this.prefix,this.projectLink,this.publishTime,
      this.superChapterId,this.superChapterName,this.tags,this.title,this.type,this.userId,this.visible,this.zan);

  factory HomeArticalSubDataBean.fromJson(Map<String,dynamic> json) => _$HomeArticalSubDataBeanFromJson(json);

  Map<String,dynamic> toJson() => _$HomeArticalSubDataBeanToJson(this);

}