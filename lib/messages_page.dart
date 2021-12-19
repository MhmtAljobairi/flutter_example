import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MessagesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Messages Page"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  Fluttertoast.showToast(
                      msg: "This is Center Short Toast",
                      toastLength: Toast.LENGTH_LONG);
                },
                child: Text("Toast Message")),
            ElevatedButton(
                onPressed: () {
                  SnackBar snackbar = SnackBar(
                    content: Text("This is Center Short Toast"),
                    action: SnackBarAction(
                        label: "Dismiss",
                        onPressed: () {
                          ScaffoldMessenger.of(context).hideCurrentSnackBar();
                        }),
                  );

                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                },
                child: Text("Snackbar Message")),
            ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (BuildContext alertContext) => AlertDialog(
                            title: Text("Alert Dialog"),
                            content: Text("The job has benn created!"),
                            actions: [
                              TextButton(onPressed: () {}, child: Text("Yes")),
                              TextButton(
                                  onPressed: () {
                                    Navigator.pop(alertContext);
                                  },
                                  child: Text(
                                    "No",
                                    style: TextStyle(color: Colors.red),
                                  ))
                            ],
                          ));
                },
                child: Text("AlertDialog Message")),
          ],
        ),
      ),
    );
  }
}
