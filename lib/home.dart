import 'package:buttonsexamples/calculator_page.dart';
import 'package:buttonsexamples/drawer_page.dart';
import 'package:buttonsexamples/instgram.dart';
import 'package:buttonsexamples/messages_page.dart';
import 'package:buttonsexamples/nav_first_page.dart';
import 'package:buttonsexamples/snapchat.dart';
import 'package:buttonsexamples/state_page.dart';
import 'package:buttonsexamples/tabs_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  _handleCalculatorAction(BuildContext context) {
    Navigator.push(context,
        MaterialPageRoute(builder: (BuildContext build) => CalculatorPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  _handleCalculatorAction(context);
                },
                child: const Text("Calculator Example")),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext build) => StatePage()));
              },
              child: Text("State Example"),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext) => InstgramPage()));
                },
                child: Text("Instagram Example")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => NavFistPage()));
                },
                child: Text("Navigator Example")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => SnapchatPage()));
                },
                child: Text("Snapchat Example")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => TabsPage()));
                },
                child: Text("Tabs Example")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => DrawerPage()));
                },
                child: Text("Drawer Example")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => MessagesPage()));
                },
                child: Text("Messages Example")),
          ],
        ),
      ),
    );
  }
}
