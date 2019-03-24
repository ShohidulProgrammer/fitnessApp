import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => new _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      // appBar: new AppBar(
      //   title: new Text('Settings'),
      //   backgroundColor: Colors.deepOrangeAccent,
      // ),
      body: new Center(
        child: new Text("Settings Page", style: new TextStyle(fontSize: 35.0)),
      ),
    );
  }
}
