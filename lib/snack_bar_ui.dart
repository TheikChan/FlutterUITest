import 'package:flutter/material.dart';

void main() => runApp(SnackBarDemo());

class SnackBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SnackBar Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('SnackBar Demo'),
        ),
        body: SnackBarPage(),
      ),
    );
  }
}

class SnackBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child:Row(
        children: <Widget>[
          loginButton,
          registerButton
        ],
      )
      // child: RaisedButton(
      //   onPressed: () {
      //     final snackBar = SnackBar(
      //       content: Text('Yay! A SnackBar!'),
      //       action: SnackBarAction(
      //         label: 'Undo',
      //         onPressed: () {
      //           // Some code to undo the change.
      //         },
      //       ),
      //     );

      //     // Find the Scaffold in the widget tree and use
      //     // it to show a SnackBar.
      //     Scaffold.of(context).showSnackBar(snackBar);
      //   },
      //   child: Text('Show SnackBar'),
      // ),
    );
  }
}

SnackBar snackBar = SnackBar(
  content: Text('Connection failed!'),
  action: SnackBarAction(
    label: 'Retry',
    onPressed: (){
    },
  ),
);

RaisedButton registerButton = RaisedButton(
  onPressed: (){
    // Scaffold.of(context).showSnackBar(snackBar);
  },
  child: Text('Register'),
);

RaisedButton loginButton = RaisedButton(
  child: Text('Login'),
  onPressed: (){},
);