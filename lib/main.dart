import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.teal),
      home: PageOne(),
    );
  }
}


class PageOne extends StatefulWidget {
  @override
  _PageOne createState() => _PageOne();
}
class _PageOne extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    bool isMobile = MediaQuery.of(context).size.width < 600;
    return Scaffold(
      appBar: isMobile ? AppBar() : null,
      drawer: isMobile ? Drawer(
          elevation: 0,
          child: Column(
            children: <Widget>[
              FlatButton(
                child: Text("P1"),
                color: (Colors.tealAccent[50]),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              FlatButton(
                  child: Text("P2"),
                  color: (Colors.indigoAccent[100]),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PageTwo()));
                  })
            ],
          )),
      body: FlatButton(
        child: Text("Info"),
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text("You are on page №1"),
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

class PageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
            elevation: 0,
            child: Column(
              children: <Widget>[
                FlatButton(
                  child: Text("P1"),
                  color: (Colors.tealAccent[50]),
                  onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => PageOne()));
                  },
                ),
                FlatButton(
                    child: Text("P2"),
                    color: (Colors.indigoAccent[100]),
                    onPressed: () {
                      Navigator.pop(context);
                    })
              ],
            )),
        body: FlatButton(
            child: Text("Info"),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text("You are on page №2"),
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
            }));
  }
}
