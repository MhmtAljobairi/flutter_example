import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InstgramPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Instgram"),
      ),
      body: Container(
        child: Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.pinkAccent,
              ),
              title: Text("Instgram"),
              trailing: Icon(Icons.more_horiz),
            ),
            Container(
                margin: EdgeInsets.only(left: 8.0, right: 8.0),
                child: Image.asset("assets/images/instgram_body.png")),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                children: const [
                  Expanded(
                      flex: 1,
                      child: Icon(
                        Icons.favorite,
                        color: Colors.red,
                        size: 33,
                      )),
                  Expanded(
                      flex: 1,
                      child: Icon(
                        Icons.question_answer_outlined,
                        size: 33,
                      )),
                  Expanded(
                      flex: 1,
                      child: Icon(
                        Icons.send,
                        size: 33,
                      )),
                  Expanded(
                      flex: 4,
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Icon(
                          Icons.bookmark,
                          size: 33,
                        ),
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("20.451 views"),
                  Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetti"),
                  Padding(
                    padding: EdgeInsets.only(top: 5.0),
                    child: Text(
                      "View all comments",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "6 DAYS AGO",
                    style: TextStyle(fontSize: 10, color: Colors.grey),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
