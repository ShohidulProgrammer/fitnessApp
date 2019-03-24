import 'package:flutter/material.dart';

class FoodPage extends StatefulWidget {
  @override
  _FoodPageState createState() => new _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      // appBar: new AppBar(
      //   title: new Text('Food Plane'),
      //   backgroundColor: Colors.deepOrangeAccent,
      // ),
      body: new Center(
        child:
            new Text("Food Plane Page", style: new TextStyle(fontSize: 35.0)),
      ),
    );
  }
}

