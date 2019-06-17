import 'package:flutter/material.dart';

class CustomUIApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      child: Center(
        child: Text(
          'Hello World',
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontSize: 32,
            color: Colors.black87,
          ),
        ),
      ),
    );
  }
}

class MyStateless extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material App',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: MyStateFull(
          title: "My home page",
        ));
  }
}

class MyStateFull extends StatefulWidget {
  final String title;

  MyStateFull({Key key, this.title}) : super(key: key);
  @override
  _MyStateFull createState() => new _MyStateFull();
}

class _MyStateFull extends State<MyStateFull> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: value ? Colors.black : Colors.blue,
      appBar: new AppBar(title: Text("App Title")),
      body: Center(
        child: Switch(
            value: value,
            onChanged: (v) {
              setState(() {
                value = v;
              });
            }),
      ),
    );
  }
}

Widget image = Container(
  height: 200.0,
  width: 200.0,
  child: Image.network("https://flutter.io/images/flutter-mark-square-100.png"),
);

Widget text = Container(
  height: 200.0,
  width: 200.0,
  child: Text('Decoration'),
);

Widget icon = Container(
  height: 100.0,
  width: 100.0,
  child: Icon(Icons.star),
);

//Widget raisedButton = Container(
//  width: 120.0,
//  height: 80.0,
//  child: RaisedButton(
//    onPressed: () {
//      Scaffold.of(context).showSnackBar(SnackBar(
//          content: Text("HELLO!"),
//      ));
//    },
//    child: Text("Submit"),
//    textColor: Colors.white,
//  ),
//);

Widget column = Column(
  crossAxisAlignment: CrossAxisAlignment.center,
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: <Widget>[
    Container(
      width: 100.0,
      height: 100.0,
      color: Colors.red,
    ),
    Container(
      width: 100.0,
      height: 100.0,
      color: Colors.green,
    ),
    Container(
      width: 100.0,
      height: 100.0,
      color: Colors.blue,
    ),
  ],
);

Widget row = Row(
  crossAxisAlignment: CrossAxisAlignment.center,
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: <Widget>[
    Container(
      width: 100.0,
      height: 100.0,
      color: Colors.red,
    ),
    Container(
      width: 100.0,
      height: 100.0,
      color: Colors.green,
    ),
    Container(
      width: 100.0,
      height: 100.0,
      color: Colors.blue,
    ),
  ],
);
