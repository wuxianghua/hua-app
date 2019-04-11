import 'package:hua_film/mode/HomeArticalSubDataBean.dart';
import 'package:json_annotation/json_annotation.dart';
part 'HomeArticalDataBean.g.dart';
@JsonSerializable()
class HomeArticalDataBean{
  int curPage;
  List<HomeArticalSubDataBean> datas;
  int offset;
  bool over;
  int pageCount;
  int size;
  int total;

  HomeArticalDataBean(this.curPage,this.datas,this.offset,this.over,this.pageCount,this.size,this.total);

  factory HomeArticalDataBean.fromJson(Map<String,dynamic> json) => _$HomeArticalDataBeanFromJson(json);

  Map<String,dynamic> toJson() => _$HomeArticalDataBeanToJson(this);
}