import 'package:flutter/material.dart';

class WaterPage extends StatelessWidget {
  // final Widget water;

  // WaterPage({Key key, this.water}) : super(key: key);
  WaterPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Text("Water Page", style: new TextStyle(fontSize: 35.0)),
      ),
    );
  }
}
