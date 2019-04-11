import 'package:flutter/material.dart';
import 'package:hua_film/dao/DaoResult.dart';
import 'package:hua_film/dao/WanAndroidDao.dart';
import 'package:hua_film/mode/HomeArticalSubDataBean.dart';
import 'package:hua_film/mode/HomeBannerBean.dart';
import 'package:hua_film/mode/HomeBannerDataBean.dart';
import 'package:hua_film/utils/CommonUtils.dart';
import 'package:hua_film/utils/NavigatorUtils.dart';
import 'package:hua_film/widget/CardItem.dart';
import 'package:hua_film/widget/swiper.dart';

class WanAndroidPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _WanAndroidPage();
  }

}

class _WanAndroidPage extends State<WanAndroidPage> with AutomaticKeepAliveClientMixin{
  DataResult _dataReuslt;
  DataResult _dataBannerResult;
  List<HomeArticalSubDataBean> articalDatas = [];
  List<HomeBannerDataBean> bannerDatas = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    if(articalDatas.length == 0) {
      getHomeArtical();
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return articalDatas.length == 0 ? new Center(child: new CircularProgressIndicator()):
      ListView.builder(
        itemCount: articalDatas.length + 1,
        itemBuilder:(BuildContext context,int index) {
          if(index == 0) {
            return new Container(height: 204,child: new CardItem(color: Colors.white,child: _getBanner(),));
          }else {
            return new GestureDetector(
                // When the child is tapped, show a snackbar
                child: new CardItem(color: Colors.white,child:_getWidget(index - 1)),
                onTap: () {
                  print("index" + index.toString());
                  NavigatorUtils.goArticalDetail(context,articalDatas[index - 1].link,articalDatas[index - 1].title);
                });
          }

    });
  }

  void getHomeArtical() async{
       _dataReuslt = await WanAndroidDao.getHomePageArticalDao();
       _dataBannerResult = await WanAndroidDao.getHomePageBannerDao();
       setState(() {
         articalDatas = _dataReuslt.data.data.datas;
         bannerDatas = _dataBannerResult.data.data;
       });
  }

  _getWidget(int index) {
    return new Container(
      height: 100,
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          new Container(
              padding: EdgeInsets.only(top: 10,bottom: 10),
              width: 300,
              child: new Text(articalDatas[index].title,
            style: TextStyle(color: Colors.black,fontSize:16),
          )),
          new Expanded(child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              new Text("作者："+articalDatas[index].author),
              new Text(articalDatas[index].niceDate),
              new Text(articalDatas[index].superChapterName)
            ],
          ))
        ],
      ),
    );
  }

  _getBanner() {
    return AspectRatio(
      aspectRatio: 16.0 / 9.0,
      child: Swiper(
        indicatorAlignment: AlignmentDirectional.bottomEnd,
        speed: 400,
        indicator: CircleSwiperIndicator(),
        children: _getWidgets(),
      ),
    );
  }

  _getWidgets() {
    List<GestureDetector> widgets = [];
    for(int i = 0; i < bannerDatas.length; i++) {
      widgets.add(new GestureDetector(
          onTap:(){
            print("index banner" + i.toString());
            NavigatorUtils.goArticalDetail(context,bannerDatas[i].url,bannerDatas[i].title);
          },
      // When the child is tapped, show a snackbar
      child: new Image(image: NetworkImage(bannerDatas[i].imagePath))),
      );
    }
    return widgets;
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}