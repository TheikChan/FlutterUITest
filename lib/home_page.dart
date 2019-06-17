import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  final List<String> items;

  HomePage({Key key,@required this.items}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter UI",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Home Page"),
        ),
        body: GridView.count(
          crossAxisCount: 3,
          children: List.generate(100,(index){
            return Center(
              child: Text("Position $index",
              style: Theme.of(context).textTheme.headline ,
              )
            );
          })
        )
        // body: Container(
        //   margin: EdgeInsets.symmetric(vertical: 100.0),
        //   height: 300.0,
        //   child: ListView(
        //     scrollDirection: Axis.horizontal,
        //     children: <Widget>[
        //       Container(
        //         width: 120.0,
        //         color: Colors.red,
        //       ),
        //       Container(
        //         width: 120.0,
        //         color: Colors.blue,
        //       ),
        //       Container(
        //         width: 120.0,
        //         color: Colors.pink,
        //       ),
        //       Container(
        //         width: 120.0,
        //         color: Colors.purple,
        //       ),
        //     ],
        //   ),
        // )
        // body: ListView.separated(
        //   // scrollDirection: Axis.horizontal,
        //   itemCount: 10,
        //   separatorBuilder: (BuildContext context,int index) => Divider(
        //     height: 2.0,
        //     color: Colors.red,
        //   ),
        //   itemBuilder: (context,index){
        //     return ListTile(
        //       // title: Text("Header Title $index")
        //       title: Text("${items[index]}")
        //     );
        //   },
        // )
        // body: ListView(
        //   // scrollDirection: Axis.horizontal,
        //   children: <Widget>[
        //     ListTile(
        //       leading: Icon(Icons.map),
        //       title: Text('Map'),
        //     ),
        //     ListTile(
        //       leading: Icon(Icons.home),
        //       title: Text('Home'),
        //     ),
        //     ListTile(
        //       leading: Icon(Icons.local_post_office),
        //       title: Text('Post Office'),
        //     ),
        //     ListTile(
        //       leading: Icon(Icons.school),
        //       title: Text('School'),
        //     ),
        //   ],
        // )
        // body: ButtonBar(
        //   children: <Widget>[
        //     RaisedButton(
        //       child: Text('OK'),
        //       onPressed: () => Navigator.pop(context,true),
        //     ),
        //     RaisedButton(
        //       child: Text('CANCEL'),
        //       onPressed: () => Navigator.pop(context,false),
        //     )
        //   ],
        // )
      ),
    );
  }

}