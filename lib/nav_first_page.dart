import 'package:buttonsexamples/nav_second_page.dart';
import 'package:flutter/material.dart';

class NavFistPage extends StatefulWidget {
  @override
  _NavFistPageState createState() => _NavFistPageState();
}

class _NavFistPageState extends State<NavFistPage> {
  TextEditingController controller = TextEditingController();

  String returnedValue = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("First Page"),
        ),
        body: Container(
          child: Column(
            children: [
              TextField(
                controller: controller,
              ),
              ElevatedButton(
                  onPressed: () async {
                    String value = controller.text;
                    var result = await Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext) => NavSecondPage(value)));
                    setState(() {
                      returnedValue = result as String;
                    });
                  },
                  child: Text("Send")),
              Text(
                returnedValue,
                style: TextStyle(color: Colors.red, fontSize: 40),
              )
            ],
          ),
        ));
  }
}
