import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FormBasicPage extends StatefulWidget {
  @override
  _FormBasicPageState createState() => _FormBasicPageState();
}

class _FormBasicPageState extends State<FormBasicPage> {
  TextEditingController fullNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailAddressController = TextEditingController();

  String? fullNameError;
  String? passwordError;
  String? emailAddressError;

  _handleValidation() {
    String fullName = fullNameController.text;
    String password = passwordController.text;
    String emailAddress = emailAddressController.text;

    setState(() {
      if (fullName.isEmpty) {
        fullNameError = "Please enter your full name";
      } else {
        fullNameError = null;
      }
      if (password.isEmpty) {
        passwordError = "Please enter your password";
      } else {
        passwordError = null;
      }
      if (emailAddress.isEmpty) {
        emailAddressError = "Please enter your email address";
      } else {
        emailAddressError = null;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forms Page"),
      ),
      body: Container(
        child: Column(
          children: [
            TextField(
              controller: fullNameController,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                  labelText: "Full Names",
                  errorText: fullNameError,
                  suffix: Icon(Icons.clear),
                  icon: Icon(Icons.person)),
            ),
            TextField(
              controller: passwordController,
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
              maxLength: 10,
              decoration: InputDecoration(
                  suffix: Icon(Icons.remove_red_eye),
                  labelText: "Password",
                  errorText: passwordError,
                  icon: Icon(Icons.password)),
            ),
            TextField(
              controller: emailAddressController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  hintText: "john@example.com",
                  labelText: "Email Address",
                  errorText: emailAddressError,
                  icon: Icon(Icons.email)),
            ),
            ElevatedButton(onPressed: _handleValidation, child: Text("Submit"))
          ],
        ),
      ),
    );
  }
}
