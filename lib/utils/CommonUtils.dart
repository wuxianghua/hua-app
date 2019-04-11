
class CommonUtils{
  static getFormatNowTime() {
    var now = new DateTime.now();
    return now.toString().replaceAll("-", "").split(" ")[0];
  }
}