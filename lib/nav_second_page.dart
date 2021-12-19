import 'package:flutter/material.dart';

class NavSecondPage extends StatefulWidget {
  String incomingValue;

  NavSecondPage(this.incomingValue);

  @override
  _NavSecondPageState createState() => _NavSecondPageState(this.incomingValue);
}

class _NavSecondPageState extends State<NavSecondPage> {
  String incomingSateValue;

  _NavSecondPageState(this.incomingSateValue);

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Second Page"),
        ),
        body: Container(
          child: Column(
            children: [
              TextField(
                controller: controller,
              ),
              ElevatedButton(
                  onPressed: () {
                    String value = controller.text;
                    Navigator.pop(context, value);
                  },
                  child: Text("Return Back")),
              Text(
//                widget.incomingValue,
                incomingSateValue,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
              )
            ],
          ),
        ));
  }
}
