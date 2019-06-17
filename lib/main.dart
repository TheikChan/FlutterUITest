import 'package:flutter/material.dart';
// import 'login_page.dart';
// import 'home_page.dart';
// import 'snack_bar_ui.dart';
// import 'tab_bar_demo.dart';
// import 'list_view_demo.dart';
// import 'long_list_view_demo.dart';
// import 'floating_app_bar_list_view.dart';
// import 'multi_item_list_view.dart';
// import 'horizontal_list_view.dart';
// import 'grid_list_view.dart';
// import 'flutter_layout_demo.dart';
// import 'animate_property_demo.dart';
import 'dog_cart/dog_model.dart';
import 'dog_cart/dog_cart.dart';
import 'dog_cart/dog_list.dart';
import 'dog_cart/new_dog_form.dart';
import 'bank_account/bank_home_page.dart';

void main(){
  runApp(
    BankHomePage()
    // AnimatedContainerApp()
    // DogCartApp()
    // GridListView()
    // HorizontalListView()
  //   MultiItemListView(
  //   items: List<ListItem>.generate(
  //     1000,
  //     (i) => i % 6 == 0
  //         ? HeadingItem("Heading $i")
  //         : MessageItem("Sender $i", "Message body $i"),
  //   ),
  // )
  );
    // FloatingAppBarListViewDemo();
    // LongListViewDemo(
    // items: List<String>.generate(10000, (i) => "Item $i")));
    // ListViewDemo());
    // TabBarDemo());
    // SnackBarDemo());
  // debugPaintSizeEnabled = true;
  // LoginPage();
  // HomePage(items: List<String>.generate(100, (i) => "Title $i")));
}

class DogCartApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /// MaterialApp is the base Widget for your Flutter Application
    /// Gives us access to routing, context, and meta info functionality.
    return MaterialApp(
      title: 'We Rate Dogs',
      // Make all our text default to white
      // and backgrounds default to dark
      theme: ThemeData(brightness: Brightness.dark),
      home: MyHomePage(title: 'We Rate Dogs'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
    List<Dog> initialDoggos = []
        ..add(Dog('Ruby', 'Portland, OR, USA',
            'Ruby is a very good girl. Yes: Fetch, loungin\'. No: Dogs who get on furniture.'))
        ..add(Dog('Rex', 'Seattle, WA, USA', 'Best in Show 1999'))
        ..add(Dog('Rod Stewart', 'Prague, CZ',
            'Star good boy on international snooze team.'))
        ..add(Dog('Herbert', 'Dallas, TX, USA', 'A Very Good Boy'))
        ..add(Dog('Buddy', 'North Pole, Earth', 'Self proclaimed human lover.'));

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          backgroundColor: Colors.black87,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.add),
              onPressed: _showNewDogForm,
            )
          ],
        ),
        body: Container(
          // Add box decoration
          decoration: BoxDecoration(
            // Box decoration takes a gradient
            gradient: LinearGradient(
              // Where the linear gradient begins and ends
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              // Add one stop for each color. Stops should increase from 0 to 1
              stops: [0.1, 0.5, 0.7, 0.9],
              colors: [
                // Colors are easy thanks to Flutter's Colors class.
                Colors.indigo[800],
                Colors.indigo[700],
                Colors.indigo[600],
                Colors.indigo[400],
              ],
            ),
          ),
          child: Center(
            child: DogList(initialDoggos),
          ),
        ),
      );
    }

    Future _showNewDogForm() async {
      // push a new route like you did in the last section
      Dog newDog = await Navigator.of(context).push(
        MaterialPageRoute(
          builder: (BuildContext context) {
            return AddDogFormPage();
          },
        ),
      );
      // A null check, to make sure that the user didn't abandon the form.
      if (newDog != null) {
        // Add a newDog to our mock dog array.
        initialDoggos.add(newDog);
      }
    }
}

// class LayoutDemo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Row( 
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: <Widget>[
//               Text('Login'),
//               Text('Register')
//               // Icon(Icons.star, size: 50),
//               // Icon(Icons.star, size: 50),
//               // Icon(Icons.star, size: 50),
//             ],
//           );
//   }
// }

// // A widget that appears as a blue square. Just ignore the details for now!
// class BlueBox extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 50,
//       height: 50,
//       decoration: BoxDecoration(
//         color: Colors.blue,
//         border: Border.all(),
//       ),
//     );
//   }
// }

// class MyMaterialApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "Flutter UI",
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Home Page"),
//         ),
//         body: Column(
//           children: <Widget>[
//             titleSection,
//             buttonSection
//           ],
//         )
//         // body: new Container(
//         //     padding: const EdgeInsets.only(bottom: 8.0),
//         //     child: Row(
//         //       mainAxisSize: MainAxisSize.min,
//         //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         //       children: [
//         //         Image.asset(
//         //           'assets/images/car_logo.jpg',
//         //           width: 80,height: 80),
//         //         Image.asset(
//         //           'assets/images/car_logo.jpg',
//         //           width: 80,height: 80
//         //         ),
//         //         Image.asset(
//         //           'assets/images/car_logo.jpg',
//         //           width: 80,height: 80
//         //         ),
//         //       ],
//         //     ),
//         //     // style:
//         //     //     new TextStyle(fontWeight: FontWeight.bold)
//         //     ),
//         ),
//       );
//   }
// }

// class CustomApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(color: Colors.white),
//       child: Center(
//         child: Text(
//           'Hello World',
//           textDirection: TextDirection.ltr,
//           style: TextStyle(
//             fontSize: 32,
//             color: Colors.black87,
//           ),
//         ),
//       ),
//     );
//   }
// }

// Widget titleSection = Container(
//   padding: const EdgeInsets.all(32),
//   child: Row(children: [
//     Expanded(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           Container(
//             padding: const EdgeInsets.only(bottom: 8),
//             child: Text(
//               'Oeschinen Lake Campground',
//               style: TextStyle(
//                 fontWeight: FontWeight.bold
//               ),
//             ),
//             ),
//             Text(
//               'Kandersteg, Switzerland',
//               style: TextStyle(
//                 color: Colors.grey[500]
//               ) ,
//             )
//         ],
//       ),
//     ),
//     Icon(
//       Icons.star,
//       color: Colors.red[500],
//     ),
//     Text('41')
//   ],
//   ),
// );

// Widget buttonSection = Container(
//     child: Row(
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       children: <Widget>[
//         buildButtonColumn(Colors.red[500],Icons.call,'Call'),
//         buildButtonColumn(Colors.green[500],Icons.near_me,'Near Me'),
//         buildButtonColumn(Colors.pink[500],Icons.share,'Share'),
//         buildButtonRow(Colors.pink[500],Icons.share,'Share &\nWin')
//       ]
//       ,),
// );

// Column buildButtonColumn(Color color,IconData icon,String title){
//   return Column(
//     mainAxisSize: MainAxisSize.min,
//     mainAxisAlignment: MainAxisAlignment.center,
//     children: <Widget>[
//       Icon(icon,color: color),
//       Container(
//         margin: const EdgeInsets.only(top: 8),
//         child: Text(
//           title,
//           style: TextStyle(
//             fontSize: 12,
//             fontWeight: FontWeight.w400,
//             color: color
//           ),
//         ),
//       )
//     ]
//     );
// }

// Row buildButtonRow(Color color,IconData icon,String title){
//   return Row(
//     mainAxisAlignment: MainAxisAlignment.center,
//     children: <Widget>[
//       Icon(icon,color: color),
//       Padding(
//         padding: const EdgeInsets.only(left: 10),
//       ),
//       Text(
//         title,
//         textAlign: TextAlign.center,
//         style: TextStyle(
//           color: color,
//           fontWeight: FontWeight.bold,
//           fontSize: 14
//         ),
//       ),
//       // RaisedButton(
//       //   onPressed: () {},
//       //   child: const Text(
//       //     'Enabled Button',
//       //     style: TextStyle(
//       //       fontSize: 20,
//       //       // backgroundColor: Colors.deepPurple
//       //       )
//       //   ),
//       // ),
//       RaisedButton(
//         onPressed: () {
//           // Navigator.push(
//           //   context,
//           //   MaterialPageRoute(builder: (context) => SecondScreen()),
//           // );
//         },
//         textColor: Colors.white,
//         padding: const EdgeInsets.all(0.0),
//         child: Container(
//           decoration: const BoxDecoration(
//             borderRadius: const BorderRadius.all(Radius.circular(20)),
//             gradient: LinearGradient(
//               colors: <Color>[
//                 Color(0xFF0D47A1),
//                 Color(0xFF1976D2),
//                 Color(0xFF42A5F5),
//               ],
//             ),
//           ),
//           padding: const EdgeInsets.all(10.0),
//           child: const Text(
//             'Gradient Button',
//             style: TextStyle(fontSize: 20)
//           ),
//         ),
//       ),
//     ],
//   );
// }
