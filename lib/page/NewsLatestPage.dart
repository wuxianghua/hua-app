import 'package:flutter/material.dart';
import 'package:hua_film/dao/DaoResult.dart';
import 'package:hua_film/dao/ZhiHuDao.dart';
import 'package:hua_film/mode/NewsStoryBean.dart';
import 'package:hua_film/mode/NewsTopStoryBean.dart';
import 'package:hua_film/utils/CommonUtils.dart';
import 'package:hua_film/utils/NavigatorUtils.dart';
import 'package:hua_film/widget/CardItem.dart';

class NewsLatestPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _NewsLatestPage();
  }
}

class _NewsLatestPage extends State<NewsLatestPage> with AutomaticKeepAliveClientMixin{
  DataResult _resultData;
  DataResult _resultHistoryData;
  List<NewsStoryBean> _stories = [];
  List<NewsTopStoryBean> _topStories = [];
  ScrollPhysics scrollPhysics;
  final ScrollController _scrollController = new TrackingScrollController();

  @override
  void initState() {
    super.initState();
    /*scrollPhysics = new NeverScrollableScrollPhysics();
    _scrollController.addListener(() {
      if (_scrollController.position.maxScrollExtent ==
          _scrollController.position.pixels) {
        scrollPhysics = new NeverScrollableScrollPhysics();
        setState(() {});
      } else if (_scrollController.position.minScrollExtent ==
          _scrollController.position.pixels) {
        scrollPhysics = new NeverScrollableScrollPhysics();
        setState(() {});
      } else {
        scrollPhysics = new AlwaysScrollableScrollPhysics();
        setState(() {});
      }
    });*/
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    if(_stories.length == 0) {
      getNewsLatest();
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  void getNewsLatest() async {
    _resultData = await ZhiHuDao.getNewsLatestDao();
    _resultHistoryData = await ZhiHuDao.getNewsHistoryDao(CommonUtils.getFormatNowTime());

    setState(() {
      _stories = _resultHistoryData?.data?.stories;
      _topStories = _resultData?.data?.top_stories;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 36.0,
      //EdgeInsets 这个类就比较diao了 通过他可以很好的控制widget上下左右的偏移量 有.all全部设置 也有.symmetric水平和垂直可选  也有.only上下左右可选
      //官网对EdgeInsets的说明 Typically used for an offset from each of the four sides of a box. For example, the padding inside a box can be represented using this class.
      //这里的padding对Center是操作无效的 但如果改为EdgeInsets.only(left:8.0),就可以看到明显的偏移
      padding: const EdgeInsets.all(8.0),
      //上下左右都偏移8像素边距
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      //symmetric的参数是可选的 水平方向
//        背景装饰
      decoration: new BoxDecoration(
          //圆角和颜色
          borderRadius: new BorderRadius.circular(5.0),
          color: Colors.white),
      child: new Container(
        child: _stories.length == 0
            ? new Center(child: new CircularProgressIndicator())
            : new Container(
                child: new Column(
                  children: <Widget>[
                    new Expanded(
                      child: new ListView.builder(
                        itemCount: _stories.length + 1,
                        itemBuilder: (BuildContext context, int index) {
                          if (index == 0) {
                            return new Container(
                                height: 150,
                                child: new CardItem(
                                  color: Colors.white,
                                  child: new Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        new Expanded(
                                          child: new Container(
                                            padding: EdgeInsets.only(
                                                left: 5, top: 5, bottom: 5),
                                            child: new Text("热门"),
                                          ),
                                          flex: 1,
                                        ),
                                        new Expanded(
                                          child: new ListView.builder(
                                            scrollDirection: Axis.horizontal,
                                            itemCount: _topStories.length,
                                            itemBuilder: (BuildContext context,
                                                int index) {
                                              return _getTopWidget(index);
                                            },
                                          ),
                                          flex: 5,
                                        )
                                      ]),
                                ));
                          } else if (index == 1) {
                            return new Container(
                                padding: EdgeInsets.only(
                                    left: 7, top: 10, bottom: 5),
                                child: new Text(
                                  "推荐",
                                ));
                          } else {
                            return _getWidget(index - 2);
                          }
                        },
                      ),
                      flex: 2,
                    )
                  ],
                ),
              ),
      ),
    );
    // TODO: implement build
  }

  Widget _getWidget(int index) {
    return new GestureDetector(
      // When the child is tapped, show a snackbar
        child: new CardItem(child: _getChild(index), color: Colors.white),
        onTap: () {
          NavigatorUtils.goNewsDetail(context,_stories[index].id.toString());
        });
  }

  _getChild(int index) {
    return new Row(
      children: <Widget>[
        new Container(
          child: new Text(_stories[index].title),
          padding: EdgeInsets.only(left: 6),
          width: 165,
        ),
        new Container(
          child: new Image(image: NetworkImage(_stories[index].images[0])),
          padding: EdgeInsets.all(5),
          width: 150,
          height: 150,
        )
      ],
    );
  }

  Widget _getTopWidget(int index) {
    return new GestureDetector(
      // When the child is tapped, show a snackbar
        child: new CardItem(color: Colors.blueAccent, child: _getTopChild(index)),
        onTap: () {
          NavigatorUtils.goNewsDetail(context,_topStories[index].id.toString());
        });
  }

  _getTopChild(int index) {
    return new Image(image: NetworkImage(_topStories[index].image));
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
