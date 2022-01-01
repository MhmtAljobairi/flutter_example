import 'package:buttonsexamples/login_page.dart';
import 'package:buttonsexamples/slack.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Buttons Example",
      theme: ThemeData(
          primarySwatch: Colors.red,
          errorColor: Colors.orange,
          appBarTheme: AppBarTheme(titleTextStyle: TextStyle(fontSize: 30))),
      home: SplashPage(),
    );
  }
}
