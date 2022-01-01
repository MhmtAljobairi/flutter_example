import 'package:buttonsexamples/controllers/my_share_prefrences.dart';
import 'package:buttonsexamples/login_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyHomePage extends StatelessWidget {
  void handleFloatingButtonClick() {
    //Function body.
  }

  _handleLogoutAction(BuildContext context) async {
    MySharePrefrenace().cleanToken();
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (BuildContext context) => LoginPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Buttons App"),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: Text("Elevated Button")),
            ElevatedButton.icon(
                onPressed: () {}, icon: Icon(Icons.add), label: Text("Add")),
            ElevatedButton(onPressed: () {}, child: Icon(Icons.add)),
            OutlinedButton(onPressed: () {}, child: Text("Outlined Button")),
            TextButton(onPressed: () {}, child: Text("Text Button")),
            TextButton.icon(
                onPressed: () {}, icon: Icon(Icons.add), label: Text("Add")),
            TextButton(onPressed: () {}, child: Text("Text Button")),
            InkWell(
              onTap: () {},
              onDoubleTap: () {
                print("Double tabbed;");
              },
              child: Image.network(
                "https://media-cdn.tripadvisor.com/media/photo-s/1c/df/18/17/exterior.jpg",
                height: 100,
                width: 100,
              ),
            ),
            TextButton(
                onPressed: () {
                  _handleLogoutAction(context);
                },
                child: Text("Logout")),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          handleFloatingButtonClick();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
