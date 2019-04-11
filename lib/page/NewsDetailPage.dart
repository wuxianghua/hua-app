import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hua_film/config/Config.dart';
import 'package:hua_film/dao/DaoResult.dart';
import 'package:hua_film/dao/ZhiHuDao.dart';
import 'package:hua_film/widget/NativeWebView.dart';

class NewsDetailPage extends StatefulWidget {
  static final String sName = "news_detail";
  String newId;

  NewsDetailPage(this.newId);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _NewsDetailPage(newId);
  }

}

class _NewsDetailPage extends State<NewsDetailPage> {
  String _newId;
  DataResult _dataResult;
  String _webUrl;
  _NewsDetailPage(this._newId);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getNewsDetail(_newId);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement buil
    return Scaffold(
      appBar: AppBar(
        title: new Text("新闻详情"),
      ),
      body: getNativeWeb(),
    );
  }

  Widget getNativeWeb() {
    return _webUrl == null
        ?new Center(child: new CircularProgressIndicator()): NativeWebView(
      webUrl: _webUrl,
      webRect: Rect.fromLTWH(0.0, 0.0, MediaQuery.of(context).size.width,
          MediaQuery.of(context).size.height - AppBar().preferredSize.height
              -MediaQuery.of(context).padding.top),
    );
  }

  void getNewsDetail(String newId) async{
    _dataResult = await ZhiHuDao.getNewsDetailDao(newId);
    setState(() {
      _webUrl = _dataResult.data.share_url;
    });
  }

}