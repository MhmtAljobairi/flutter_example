import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  void handleFloatingButtonClick() {
    //Function body.
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
            )
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
