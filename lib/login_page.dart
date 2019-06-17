import 'package:flutter/material.dart';
import 'home_page.dart';

class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter UI",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Lopin Page"),
        ),
        body: Column(
          children: <Widget>[
            Builder(
              builder: (context) => Center(
                child: RaisedButton(
                  child: Text("Login"),
                  onPressed: () => Navigator.pushNamed(context, "/home"),
                ),
              ),
            ),
          ],
        )
        ),
        routes: <String, WidgetBuilder>{
          '/home': (BuildContext context) => new HomePage(),
        }
    );
  }
  
  // bool getConfirmation(BuildContext context) async {
  //   return await Navigator.push(context, MaterialPageRoute(
  //     builder: (context) => HomePage(),
  //   ) ?? false;
  // }
}