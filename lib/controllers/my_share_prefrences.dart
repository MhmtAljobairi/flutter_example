import 'package:shared_preferences/shared_preferences.dart';

class MySharePrefrenace {
  final String myTokenKey = "MY_APP_TOKEN";

  setToken(String token) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString(myTokenKey, token);
  }

  Future<String?> getToken() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();

    String? value = preferences.getString(myTokenKey);
    return value;
  }

  cleanToken() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.remove(myTokenKey);
  }
}
