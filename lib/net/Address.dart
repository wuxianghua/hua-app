class Address {
  static const String host = "http://v.juhe.cn/";
  static const String douban_host = "https://api.douban.com/";
  static const String zhihu_host = "https://news-at.zhihu.com/";
  static const String wanandroid_host = "https://www.wanandroid.com/";

  static getCityList() {
    return "${host}movie/citys?dtype=&key=713a408e855352d913806ef1e3ce3c33";
  }

  static getTodayFilmList() {
    return "${host}movie/movies.today?cityid=1&dtype=&key=713a408e855352d913806ef1e3ce3c33";
  }

  static getNewLatest() {
    return "${zhihu_host}api/4/news/latest";
  }

  static getNewsHistory(String time){
    return "${zhihu_host}api/4/news/before/${time}";
  }

  static getNewsDetail(String newId) {
    return "${zhihu_host}api/4/news/${newId}";
  }

  static getHomePageArtical() {
    return "${wanandroid_host}article/list/0/json";
  }

  static getHomePageBanner() {
    return "${wanandroid_host}banner/json";
  }

  static getOnNowFilm() {
    return "${douban_host}v2/movie/in_theaters?city=上海&start=0&count=15";
  }
}