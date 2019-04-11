import 'package:hua_film/config/Config.dart';
import 'package:hua_film/dao/DaoResult.dart';
import 'package:hua_film/mode/CityResponse.dart';
import 'package:hua_film/net/Address.dart';
import 'package:hua_film/net/Api.dart';

class CityDao {
  static getCityListDao() async {
    String url = Address.getCityList();
    var res = await HttpManager.netFetch(url, null, null, null);
    if(res != null && res.result) {
      var data = res.data;
      if(data == null || data.length == 0) {
        return new DataResult([],true);
      }
      var response = CityResponse.fromJson(data);
      if(Config.DEBUG) {
        print("city num" + response.result.length.toString());
      }
      return new DataResult(response.result,true);
    }else {
      return new DataResult(null,false);
    }
  }
}