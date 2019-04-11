import 'package:flutter/material.dart';
import 'package:hua_film/widget/CardItem.dart';

class MyPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _MyPage();
  }

}

class _MyPage extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: new SingleChildScrollView(child:
      new Column(
        children: <Widget>[
          new CardItem(color: Colors.black45,child:_getTopWidget(),margin: EdgeInsets.all(0),
            shape: new RoundedRectangleBorder(borderRadius:
            BorderRadius.only(bottomLeft: Radius.circular(5),bottomRight:Radius.circular(5))),),
          new CardItem(color: Colors.white,child: _getFirstItem()),
          new CardItem(color: Colors.white,child: _getSecondItem()),
          new CardItem(color: Colors.white,child: _getThirdItem()),
          new CardItem(color: Colors.white,child: _getFourItem()),
          new CardItem(color: Colors.white,child: _getFiveItem()),
          new CardItem(color: Colors.white,child: _getSixItem()),
          new CardItem(color: Colors.white,child: _getSevenItem()),
          new CardItem(color: Colors.white,child: _getEightItem()),
        ],
      )
        )
    );
  }

  _getTopWidget() {
    return new Container(
      padding: EdgeInsets.all(10),
      child:new Column(
        children: <Widget>[
          new Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              new Image.asset('static/images/header.png',width: 80,height: 80,),
              new Padding(padding: EdgeInsets.only(left: 20),
                  child:new Text("ghost",
                    style: TextStyle(color: Colors.white),)),
              new Padding(padding: EdgeInsets.only(left: 130),
                  child:new Text("退出登录",
                    style: TextStyle(color: Colors.white,fontSize: 17),))
            ],
          ),
          new Padding(padding: EdgeInsets.only(top: 26,left: 5),
          child: new Text("个人主页：https://blog.csdn.net/u010221508",
                  maxLines: 1,
                  style: TextStyle(color: Colors.white,fontSize: 16)))
        ],
      )
    );
  }

  _getFirstItem() {
    return new Container(
      height: 100,
        padding: EdgeInsets.only(left: 20),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("static/images/bg_mine_ugc_doing.png"),
            fit: BoxFit.cover,
          ),
        ),
      child:new Row(children: <Widget>[
        new Text("账户")
      ],)
    );
  }

  _getSecondItem() {
    return new Container(
        height: 100,
        padding: EdgeInsets.only(left: 20),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("static/images/bg_mine_ugc_mark.png"),
            fit: BoxFit.cover,
          ),
        ),
        child:new Row(children: <Widget>[
          new Text("我的订阅")
        ],)
    );
  }

  _getThirdItem() {
    return new Container(
        height: 100,
        padding: EdgeInsets.only(left: 20),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("static/images/ic_rec_group_banner_1.png"),
            fit: BoxFit.cover,
          ),
        ),
        child:new Row(children: <Widget>[
          new Text("设置")
        ],)
    );
  }

  _getFourItem() {
    return new Container(
        height: 100,
        padding: EdgeInsets.only(left: 20),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("static/images/ic_rec_group_banner_2.png"),
            fit: BoxFit.cover,
          ),
        ),
        child:new Row(children: <Widget>[
          new Text("帮助")
        ],)
    );
  }

  _getFiveItem() {
    return new Container(
        height: 100,
        padding: EdgeInsets.only(left: 20),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("static/images/ic_rec_group_banner_3.png"),
            fit: BoxFit.fitWidth,
          ),
        ),
        child:new Row(children: <Widget>[
          new Text("反馈")
        ],)
    );
  }

  _getSixItem() {
    return new Container(
        height: 100,
        padding: EdgeInsets.only(left: 20),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("static/images/ic_rec_group_banner_4.png"),
            fit: BoxFit.fitHeight,
          ),
        ),
        child:new Row(children: <Widget>[
          new Text("我的消息")
        ],)
    );
  }

  _getSevenItem() {
    return new Container(
        height: 100,
        padding: EdgeInsets.only(left: 20),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("static/images/ic_rec_group_banner_5.png"),
            fit: BoxFit.fill,
          ),
        ),
        child:new Row(children: <Widget>[
          new Text("浏览历史")
        ],)
    );
  }

  _getEightItem() {
    return new Container(
        height: 100,
        padding: EdgeInsets.only(left: 20),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("static/images/ic_rec_group_banner_6.png"),
            fit: BoxFit.fill,
          ),
        ),
        child:new Row(children: <Widget>[
          new Text("邀请好友")
        ],)
    );
  }
}