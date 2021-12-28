import 'package:buttonsexamples/controllers/my_http.dart';
import 'package:buttonsexamples/models/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FormAdvPage extends StatefulWidget {
  @override
  _FormBAdvPageState createState() => _FormBAdvPageState();
}

class _FormBAdvPageState extends State<FormAdvPage> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailAddressController = TextEditingController();

  final _key = GlobalKey<FormState>();

  _handleValidation() async {
    bool validation = _key.currentState!.validate();
    if (validation) {
      var user = User(0, firstNameController.text, lastNameController.text,
          passwordController.text, emailAddressController.text);
      var response = await MyHttp().post("/users", user.toJson());
    } else {
      print("ERROR");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forms Page"),
      ),
      body: Container(
        child: Form(
          key: _key,
          child: Column(
            children: [
              TextFormField(
                controller: firstNameController,
                keyboardType: TextInputType.name,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter your first name";
                  }
                  return null;
                },
                decoration: const InputDecoration(
                    labelText: "First Name",
                    suffix: Icon(Icons.clear),
                    icon: Icon(Icons.person)),
              ),
              TextFormField(
                controller: lastNameController,
                keyboardType: TextInputType.name,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter your last name";
                  }
                  return null;
                },
                decoration: const InputDecoration(
                    labelText: "Last Name",
                    suffix: Icon(Icons.clear),
                    icon: Icon(Icons.person)),
              ),
              TextFormField(
                controller: passwordController,
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                maxLength: 10,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter your password";
                  }
                  return null;
                },
                decoration: const InputDecoration(
                    suffix: Icon(Icons.remove_red_eye),
                    labelText: "Password",
                    icon: Icon(Icons.password)),
              ),
              TextFormField(
                controller: emailAddressController,
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter your email address";
                  }
                  return null;
                },
                decoration: const InputDecoration(
                    hintText: "john@example.com",
                    labelText: "Email Address",
                    icon: Icon(Icons.email)),
              ),
              ElevatedButton(
                  onPressed: _handleValidation, child: Text("Submit"))
            ],
          ),
        ),
      ),
    );
  }
}
