import 'package:buttonsexamples/controllers/my_share_prefrences.dart';
import 'package:buttonsexamples/home_page.dart';
import 'package:buttonsexamples/login_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    _checkLogged();
  }

  _checkLogged() async {
    String? token = await MySharePrefrenace().getToken();

    if (token != null && token.isNotEmpty) {
      //Logged.
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (BuildContext context) => MyHomePage()));
    } else {
      //Not logged.
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (BuildContext context) => LoginPage()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
