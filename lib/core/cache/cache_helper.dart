import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static late SharedPreferences _preferences;
  static const _userId = 'id';
  static const _language = 'lang';
  static const _showImage = 'showImage';
  static const _deviceToken = 'deviceToken';
  static const _type = 'type';
  static const _intro = 'intro';

  static init() async {
    _preferences = await SharedPreferences.getInstance();
  }

  static setUserId(String? id) async {
    await _preferences.setString(_userId, id ?? '');
  }

  static String getUserId() {
    return _preferences.getString(_userId) ?? '';
  }

  static setShowIntro(bool? showIntro) async {
    await _preferences.setBool(_intro, showIntro ?? false);
  }

  static bool getShowIntro() {
    return _preferences.getBool(_intro) ?? false;
  }

  static setShowImage(bool? showImage) async {
    await _preferences.setBool(_showImage, showImage ?? false);
  }

  static bool getShowImage() {
    return _preferences.getBool(_showImage) ?? false;
  }

  static setDeviceToken(String? deviceToken) async {
    await _preferences.setString(_deviceToken, deviceToken ?? '');
  }

  static String getDeviceToken() {
    return _preferences.getString(_deviceToken) ?? '';
  }

  static setUserType(String? type) async {
    await _preferences.setString(_type, type ?? '');
  }

  static String getUserType() {
    return _preferences.getString(_type) ?? '';
  }

  static removeUserId(String key) async {
    await _preferences.remove(_userId);
  }

  static clearData() async {
    await _preferences.clear();
  }

  static setLang(lang) async {
    await _preferences.setString(_language, lang);
  }

  static String getLang() {
    return _preferences.getString(_language) ?? "";
  }
}
