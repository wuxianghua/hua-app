import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hua_film/config/Config.dart';
import 'package:hua_film/dao/DaoResult.dart';
import 'package:hua_film/dao/ZhiHuDao.dart';
import 'package:hua_film/widget/NativeWebView.dart';

class ArticalDetailPage extends StatefulWidget {
  static final String sName = "news_detail";
  String url;
  String title;

  ArticalDetailPage(this.url,this.title);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _ArticalDetailPage(url,title);
  }

}

class _ArticalDetailPage extends State<ArticalDetailPage> {
  DataResult _dataResult;
  String _webUrl;
  String _title;
  _ArticalDetailPage(this._webUrl,this._title);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement buil
    return Scaffold(
      appBar: AppBar(
        title: new Text(_title),
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