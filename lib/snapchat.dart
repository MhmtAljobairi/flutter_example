import 'package:flutter/material.dart';

class SnapchatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(10.0, 50.0, 10.0, 10.0),
        height: double.infinity,
        width: double.infinity,
        color: const Color(0xff23221e),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(Icons.help_outline, color: Colors.white, size: 30),
                  Icon(Icons.emoji_events,
                      color: Colors.yellowAccent, size: 30),
                  Icon(Icons.settings, color: Colors.red, size: 30),
                ],
              ),
            ),
            Expanded(
                flex: 4,
                child: Column(
                  children: [
                    Image.network(
                      "https://www.pikpng.com/pngl/b/52-522765_500-x-638-6-snapchat-code-no-background.png",
                      height: 200,
                      width: 200,
                    ),
                    const Text(
                      "Mohammad Ali",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "mohammadli",
                          style: TextStyle(color: Colors.white, fontSize: 13),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                          child: Text(
                            "|",
                            style: TextStyle(color: Colors.white, fontSize: 13),
                          ),
                        ),
                        Text(
                          "8,123",
                          style: TextStyle(color: Colors.white, fontSize: 13),
                        )
                      ],
                    ),
                  ],
                )),
            Expanded(
              flex: 4,
              child: Container(
                margin: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.15,
                    right: MediaQuery.of(context).size.width * 0.15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Icon(Icons.mood_rounded, color: Colors.white, size: 40),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Added Me",
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Icon(Icons.group_add_rounded,
                            color: Colors.white, size: 40),
                        Text(
                          "Add Friends",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Icon(Icons.book, color: Colors.white, size: 40),
                        Text(
                          "My Friends",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
