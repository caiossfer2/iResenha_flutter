import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage {
  static void setString(String key, value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(key, value);
  }

  static Future<String> getString(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? result = prefs.getString(key);
    if (result != null) {
      return result;
    } else {
      return '';
    }
  }

  static Future<bool> isAuth(String userName) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? result = prefs.getString(userName);
    if (result != null) {
      return true;
    } else {
      return false;
    }
  }

  static void removeValue(key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove(key);
  }
}
