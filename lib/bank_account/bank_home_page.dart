import 'package:flutter/material.dart';
import 'bank_drawer.dart';

class BankHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Accounts',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Account(),
    );
  }
}

class Account extends StatefulWidget{
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account>{

  AppBar toolBar() => AppBar(
    iconTheme: IconThemeData(
      color: Colors.blue, //change your color here
      ),
      backgroundColor: Colors.white,
      elevation: 0.0,
      title: Text(
        "Accounts",
        style: TextStyle(color: Colors.black),
      ),
      centerTitle: true,
      actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.search,
            color: Colors.blue,
          ),
          onPressed: () {},
        )
      ],
  );

  Card currentBalance() => Card(
    margin: EdgeInsets.all(10.0),
    elevation: 1.0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(50.0))),
    child: Container(
      decoration: BoxDecoration(
        gradient: RadialGradient(
          colors: [Color(0xFF015FFF), Color(0xFF015FFF)]
        )
      ),
      padding: EdgeInsets.all(5.0),
        // color: Color(0xFF015FFF),
        child:Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // IconButton(
                //   icon: Icon(
                //     Icons.arrow_back,
                //     color: Colors.white,
                //   ),
                //   onPressed: (){},
                // ),
                Text(
                  'Saving',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.normal
                  ),
                ),
                // IconButton(
                //   icon: Icon(
                //     Icons.arrow_forward,
                //     color: Colors.white,
                //   ),
                //   onPressed: (){},
                // )
            ],
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.all(5.0),
                child: Text(
                  r"$ 95,050",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold
                  ),
                  ),
              ),
            ),
            SizedBox(height: 35.0)
          ],
      )
    )
  );


  BottomAppBar bottomAppBar() => BottomAppBar(
    elevation: 0.0,
    child: Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          FlatButton(
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
            color: Color(0xFF015FFF),
            // borderSide: BorderSide(color: Color(0xFF015FFF), width: 1.0),
            onPressed: () {},
            child: Text(
              "ACTIVITY",
              style: TextStyle(
                color: Colors.white
                ),
            ),
          ),
          OutlineButton(
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
            borderSide: BorderSide(color: Color(0xFF015FFF), width: 1.0),
            onPressed: () {},
            child: Text("STATEMENTS"),
          ),
          OutlineButton(
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
            borderSide: BorderSide(color: Color(0xFF015FFF), width: 1.0),
            onPressed: () {},
            child: Text("DETAILS"),
          )
        ],
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: BankDrawer(),
        appBar: toolBar(),
        body: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Column(
              children: <Widget>[
                currentBalance(),
                SizedBox(
                  height: 40.0,
                  child: Icon(
                    Icons.refresh,
                    size: 35.0,
                    color: Color(0xFF015FFF)
                  )
                ),
                displayAccoutList(),
              ],
            ),
          ),
        ),
        bottomNavigationBar: bottomAppBar(),
      ),
    );
  }

  Container accountItems(
      String item, String charge, String dateString, String type,
    {Color oddColour = Colors.white}) =>
      Container(
        decoration: BoxDecoration(color: oddColour),
        padding:
            EdgeInsets.only(top: 20.0, bottom: 20.0, left: 5.0, right: 5.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(item, style: TextStyle(fontSize: 16.0)),
                Text(charge, style: TextStyle(fontSize: 16.0))
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(dateString,
                    style: TextStyle(color: Colors.grey, fontSize: 14.0)),
                Text(type, style: TextStyle(color: Colors.grey, fontSize: 14.0))
              ],
            ),
          ],
        ),
      );

  displayAccoutList() {
    return Container(
      margin: EdgeInsets.all(15.0),
      child: Column(
        children: <Widget>[
          accountItems("Trevello App", r"+ $ 4,946.00", "28-04-16", "credit",
              oddColour: const Color(0xFFF7F7F9)),
          accountItems(
              "Creative Studios", r"+ $ 5,428.00", "26-04-16", "credit"),
          accountItems("Amazon EU", r"+ $ 746.00", "25-04-216", "Payment",
              oddColour: const Color(0xFFF7F7F9)),
          accountItems(
              "Creative Studios", r"+ $ 14,526.00", "16-04-16", "Payment"),
          accountItems(
              "Book Hub Society", r"+ $ 2,876.00", "04-04-16", "Credit",
              oddColour: const Color(0xFFF7F7F9)),
        ],
      ),
    );
  }
}