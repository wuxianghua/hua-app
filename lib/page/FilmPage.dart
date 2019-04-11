import 'package:flutter/material.dart';
import 'package:hua_film/dao/DaoResult.dart';
import 'package:hua_film/dao/DouBanDao.dart';
import 'package:hua_film/dao/TodayDao.dart';
import 'package:hua_film/mode/DouBanFilmSubjectBean.dart';
import 'package:hua_film/mode/TodayFilmBean.dart';
import 'package:hua_film/utils/NavigatorUtils.dart';
import 'package:hua_film/widget/CardItem.dart';

class FilmPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _BookPage();
  }

}

class _BookPage extends State<FilmPage> with AutomaticKeepAliveClientMixin{
  int _counter = 0;
  DataResult dataResult;
  List<DouBanFilmSubjectBean> mData = [];

  @override
  void initState() {
    super.initState();
    print("hahahhahahahhahahahhaha");
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    if(mData.length == 0) {
      getOnNowFilm();
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  void getOnNowFilm() async {
    dataResult = await DouBanDao.getOnNowFilmDao();
    setState(() {
      mData = dataResult.data.subjects;
    });
  }

  _getWidget(int index) {
    //添加要展示的item内容
    return new GestureDetector(
      // When the child is tapped, show a snackbar
        child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Container(height:160,
                  child: new CardItem(color: Colors.black12,child: _getChild(index))),
              new Container(height:20,
                  child: new Text(mData[index].title,
                textAlign: TextAlign.end,
                style: TextStyle(fontSize: 12,color: Colors.black),
                maxLines: 1,
              ),padding: EdgeInsets.only(left: 6)),
              new Container(height:10,
                  child: new Text("评分:" + mData[index].rating.average.toString(),
                textAlign: TextAlign.end,
                style: TextStyle(fontSize: 10),
                maxLines: 1,
              ),
              padding: EdgeInsets.only(left: 6),)
            ]),
        onTap: () {
          NavigatorUtils.goArticalDetail(context,mData[index].alt,mData[index].title);
        });
  }

  _getChild(int i) {
    return new Padding(padding: new EdgeInsets.all(1.0),
        child: new Image(image: NetworkImage(mData[i].images.medium)));
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: mData.length == 0
          ? new Center(child: new CircularProgressIndicator()):
      new GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, //每行2个
              mainAxisSpacing: 1.0, //主轴(竖直)方向间距
              crossAxisSpacing: 1.0, //纵轴(水平)方向间距
              childAspectRatio: 0.6 //纵轴缩放比例
          ),
          itemCount:mData.length,
          itemBuilder: (BuildContext context,int index) {
            return _getWidget(index);
          })// This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}