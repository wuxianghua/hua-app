import 'package:flutter/material.dart';
import 'package:hua_film/page/WanAndroidPage.dart';
import 'package:hua_film/page/FilmPage.dart';
import 'package:hua_film/page/HomeDrawer.dart';
import 'package:hua_film/page/MyPage.dart';
import 'package:hua_film/page/NewsDetailPage.dart';
import 'package:hua_film/page/NewsLatestPage.dart';
import 'package:hua_film/style/Style.dart';
import 'package:hua_film/widget/TabBarWidget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return new MaterialApp(
      title: "Hua-App",
      theme: ThemeData(primaryColor:AppColors.primarySwatch.shade100,),
      home: new HomePage()
    );
  }

}

class HomePage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    List<Widget> tabs = [
      _renderTab(new Text("电影")),
      _renderTab(new Text("新闻")),
      _renderTab(new Text("技术")),
      _renderTab(new Text("我的"))
    ];
    return new WillPopScope(
      child: new TabBarWidget(
        drawer: new HomeDrawer(),
        title: new Text("Hua-App"),
        type: TabBarWidget.TOP_TAB,
        tabItems: tabs,
        tabViews: [
          new FilmPage(),
          new NewsLatestPage(),
          new WanAndroidPage(),
          new MyPage()
        ],
        backgroundColor: Theme.of(context).primaryColor,
        indicatorColor: Theme.of(context).indicatorColor,
      ),
    );
  }

  _renderTab(text) {
    return new Tab(
      child:new Container(
        padding: new EdgeInsets.only(top: 6),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[text],
        ),
      )
    );
  }
}
