import 'dart:convert';

import 'package:buttonsexamples/controllers/my_http.dart';
import 'package:buttonsexamples/controllers/my_share_prefrences.dart';
import 'package:buttonsexamples/controllers/user_controller.dart';
import 'package:buttonsexamples/home_page.dart';
import 'package:buttonsexamples/models/user.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailAddressController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  _handleLoginAction() async {
    try {
      if (_formKey.currentState!.validate()) {
        User user = User(
            0, "", "", passwordController.text, emailAddressController.text);

        dynamic jsonObject = await UserController().login(user);
        String token = jsonObject['type'].toString() +
            " " +
            jsonObject['token'].toString();
        MySharePrefrenace().setToken(token);
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (BuildContext context) => MyHomePage()));
      }
    } catch (ex) {
      Fluttertoast.showToast(msg: ex.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(18.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                "https://play-lh.googleusercontent.com/92xIZAW-mdwucFX1v8kyTXlLVgZfLczHv8XCVOH1tFc0M3cTRI4q9qJLUM96PqCrgWjc=s360-rw",
                height: 200,
                width: 200,
              ),
              SizedBox(height: 50),
              TextFormField(
                controller: emailAddressController,
                keyboardType: TextInputType.emailAddress,
                validator: (text) {
                  if (text == null || text.isEmpty) {
                    return "Please check the email address";
                  }
                  return null;
                },
                decoration: const InputDecoration(
                    label: Text("Email Address"), hintText: "john@example"),
              ),
              TextFormField(
                controller: passwordController,
                obscureText: true,
                keyboardType: TextInputType.visiblePassword,
                validator: (text) {
                  if (text == null || text.isEmpty) {
                    return "Please check the password";
                  }
                  return null;
                },
                decoration: const InputDecoration(
                    label: Text("Password"), hintText: "****"),
              ),
              ElevatedButton(
                  onPressed: _handleLoginAction, child: Text("Login"))
            ],
          ),
        ),
      ),
    );
  }
}
