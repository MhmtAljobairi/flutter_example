import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FormAdvPage extends StatefulWidget {
  @override
  _FormBAdvPageState createState() => _FormBAdvPageState();
}

class _FormBAdvPageState extends State<FormAdvPage> {
  TextEditingController fullNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailAddressController = TextEditingController();

  final _key = GlobalKey<FormState>();

  _handleValidation() {
    bool validation = _key.currentState!.validate();
    if (validation) {
      print("DONE");
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
                controller: fullNameController,
                keyboardType: TextInputType.name,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter your full name";
                  }
                  return null;
                },
                decoration: const InputDecoration(
                    labelText: "Full Names",
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
