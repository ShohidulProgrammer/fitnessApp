import 'package:flutter/material.dart';
// import 'package:flutter_app/components/DrawerMenu.dart';
// import 'package:flutter_app/components/bottom_navigation_bar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      //drawer: DrawerMenu(),

      body: new Center(
        child: new Text("Home Page", style: new TextStyle(fontSize: 35.0)),
      ),
    );
  }
}
