import 'package:buttonsexamples/calculator_page.dart';
import 'package:buttonsexamples/instgram.dart';
import 'package:buttonsexamples/snapchat.dart';
import 'package:buttonsexamples/tiktok.dart';
import 'package:flutter/material.dart';

class TabsPage extends StatefulWidget {
  @override
  _TabsPageState createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Tabs Page"),
            bottom: const TabBar(isScrollable: true, tabs: [
              Tab(
                icon: Icon(Icons.home),
                text: "Calculator Calculator",
              ),
              Tab(
                icon: Icon(Icons.reorder),
                text: "Snapchat",
              ),
              Tab(icon: Icon(Icons.people), text: "Insta"),
              Tab(
                icon: Icon(Icons.settings),
                text: "Tiktor",
              )
            ]),
          ),
          body: TabBarView(
            children: [
              CalculatorPage(),
              SnapchatPage(),
              InstgramPage(),
              TiktokPage(),
            ],
          ),
        ));
  }
}
