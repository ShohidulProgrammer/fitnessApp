import 'package:flutter/material.dart';

class MyAccountPage extends StatefulWidget {
  @override
  _MyAccountPageState createState() => new _MyAccountPageState();
}

class _MyAccountPageState extends State<MyAccountPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      // appBar: new AppBar(
      //   title: new Text('My Account'),
      //   backgroundColor: Colors.deepOrangeAccent,
      // ),
      body: new Center(
        child:
            new Text("My Account Page", style: new TextStyle(fontSize: 35.0)),
      ),
    );
  }
}
