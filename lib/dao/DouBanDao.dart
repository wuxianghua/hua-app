import 'package:hua_film/dao/DaoResult.dart';
import 'package:hua_film/mode/DouBanFilmBean.dart';
import 'package:hua_film/mode/NewsDetailBean.dart';
import 'package:hua_film/mode/NewsHistoryBean.dart';
import 'package:hua_film/mode/NewsLatestBean.dart';
import 'package:hua_film/net/Address.dart';
import 'package:hua_film/net/Api.dart';

class DouBanDao {
  static getOnNowFilmDao() async {
    String url = Address.getOnNowFilm();
    var res = await HttpManager.netFetch(url, null, null, null);
    if(res != null && res.result) {
      var data = res.data;
      if(data == null || data.length == 0) {
        return await new DataResult([],true);
      }
      print("1111111111111111111111");
      var response = DouBanFilmBean.fromJson(data);
      print("1111111111111111111111222222222");
      return await new DataResult(response,true);
    }else {
      return await new DataResult(null,false);
    }
  }
}