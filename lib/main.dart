import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RedPage(),
    );
  }
}

class RedPage extends StatelessWidget {
  int page = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
          elevation: 0,
          child: Column(
            children: <Widget>[
              FlatButton(
                child: Text("Red"),
                color: (Colors.red),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              FlatButton(
                  child: Text("Blue"),
                  color: (Colors.blue),
                  onPressed: () {
                    Navigator.push(context ,MaterialPageRoute(builder: (context) => BluePage()));
                  })
            ],
          )),
      body: FlatButton(
        child: Text("!"),
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text("Notification"),
                  actions: <Widget>[
                    FlatButton(
                      child: Text("Ok"),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    )
                  ],
                );
              });
        },
      ),
    );
  }
}

class BluePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
    );
  }
}