import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TiktokPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tiktok"),
      ),
      body: Container(
        padding: EdgeInsets.all(15.0),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/images/instgram_body.png"),
            CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(
                  "http://pm1.narvii.com/6943/db66396b2803a1165719b7d96cdb75b20e8c018er1-720-723v2_uhq.jpg"),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "@themrspedersan",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5.0, right: 5.0),
                    child: Icon(
                      Icons.verified,
                      size: 15,
                      color: Colors.cyanAccent,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: const [
                      Text(
                        "367",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 8.0),
                        child: Text(
                          "Following",
                          style: TextStyle(color: Colors.grey),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: const [
                      Text(
                        "12.5",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 8.0),
                        child: Text(
                          "Followers",
                          style: TextStyle(color: Colors.grey),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: const [
                      Text(
                        "1.6M",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 8.0),
                        child: Text(
                          "Likes",
                          style: TextStyle(color: Colors.grey),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Row(
                children: [
                  OutlinedButton(
                      onPressed: () {
                        //Function
                      },
                      child: Text(
                        "Edit Profile",
                        style: TextStyle(color: Colors.black),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
