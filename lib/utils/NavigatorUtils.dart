import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hua_film/page/ArticalDetailPage.dart';
import 'package:hua_film/page/NewsDetailPage.dart';

class NavigatorUtils{
  //新闻详情页
  static goNewsDetail(BuildContext context,String newId) {
    NavigatorUtils.NavigatorRouter(context,new NewsDetailPage(newId));
  }

  //文章详情页
  static goArticalDetail(BuildContext context,String url,String title) {
    NavigatorUtils.NavigatorRouter(context,new ArticalDetailPage(url,title));
  }

  static NavigatorRouter(BuildContext context, Widget widget) {
    return Navigator.push(context, new CupertinoPageRoute(builder: (context) => widget));
  }
}