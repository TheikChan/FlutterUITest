import 'package:flutter/material.dart';

void main() => runApp(MyMaterialApp());

class MyMaterialApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter UI",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Home Page"),
        ),
        body: Column(
          children: <Widget>[
            titleSection,
            buttonSection
          ],
        )
        // body: new Container(
        //     padding: const EdgeInsets.only(bottom: 8.0),
        //     child: Row(
        //       mainAxisSize: MainAxisSize.min,
        //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //       children: [
        //         Image.asset(
        //           'assets/images/car_logo.jpg',
        //           width: 80,height: 80),
        //         Image.asset(
        //           'assets/images/car_logo.jpg',
        //           width: 80,height: 80
        //         ),
        //         Image.asset(
        //           'assets/images/car_logo.jpg',
        //           width: 80,height: 80
        //         ),
        //       ],
        //     ),
        //     // style:
        //     //     new TextStyle(fontWeight: FontWeight.bold)
        //     ),
        ),
      );
  }

}

class CustomApp extends StatelessWidget {
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

Widget titleSection = Container(
  padding: const EdgeInsets.all(32),
  child: Row(children: [
    Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(bottom: 8),
            child: Text(
              'Oeschinen Lake Campground',
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),
            ),
            ),
            Text(
              'Kandersteg, Switzerland',
              style: TextStyle(
                color: Colors.grey[500]
              ) ,
            )
        ],
      ),
    ),
    Icon(
      Icons.star,
      color: Colors.red[500],
    ),
    Text('41')
  ],
  ),
);

Widget buttonSection = Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        buildButtonColumn(Colors.red[500],Icons.call,'Call'),
        buildButtonColumn(Colors.green[500],Icons.near_me,'Near Me'),
        buildButtonColumn(Colors.pink[500],Icons.share,'Share'),
        buildButtonRow(Colors.pink[500],Icons.share,'Share &\nWin')
      ]
      ,),
);

Column buildButtonColumn(Color color,IconData icon,String title){
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Icon(icon,color: color),
      Container(
        margin: const EdgeInsets.only(top: 8),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: color
          ),
        ),
      )
    ]
    );
}

Row buildButtonRow(Color color,IconData icon,String title){
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Icon(icon,color: color),
      Padding(
        padding: const EdgeInsets.only(left: 10),
      ),
      Text(
        title,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: color,
          fontWeight: FontWeight.bold,
          fontSize: 14
        ),
      ),
      // RaisedButton(
      //   onPressed: () {},
      //   child: const Text(
      //     'Enabled Button',
      //     style: TextStyle(
      //       fontSize: 20,
      //       // backgroundColor: Colors.deepPurple
      //       )
      //   ),
      // ),
      RaisedButton(
        onPressed: () {},
        textColor: Colors.white,
        padding: const EdgeInsets.all(0.0),
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            gradient: LinearGradient(
              colors: <Color>[
                Color(0xFF0D47A1),
                Color(0xFF1976D2),
                Color(0xFF42A5F5),
              ],
            ),
          ),
          padding: const EdgeInsets.all(10.0),
          child: const Text(
            'Gradient Button',
            style: TextStyle(fontSize: 20)
          ),
        ),
      ),
    ],
  );
}
