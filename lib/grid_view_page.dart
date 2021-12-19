import 'package:flutter/material.dart';

class GridViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View Example"),
      ),
      body: GridView.count(children: [
        Container(
          height: 20,
          color: Colors.orange,
          width: 20,
        ),
        Container(
          height: 20,
          color: Colors.blue,
          width: 20,
        ),
        Container(
          height: 20,
          color: Colors.red,
          width: 20,
        ),
        Container(
          height: 20,
          color: Colors.yellowAccent,
          width: 20,
        )
      ], crossAxisCount: 4),
    );
  }
}
