import 'package:flutter/material.dart';

// my imports

import 'package:flutter_app/src/components/fab/DiagonalClipper.dart';
import 'package:flutter_app/src/components/fab/animated_fab.dart';

// import 'package:flutter_app/routers/Routes.dart';
//import 'package:flutter_app/components/DrawerMenu.dart';

class FabMenu extends StatefulWidget {
  FabMenu({Key key}) : super(key: key);

  @override
  _FabMenuState createState() => new _FabMenuState();
}

class _FabMenuState extends State<FabMenu> {
  double _imageHeight = 256.0;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Stack(
        children: <Widget>[
          Text("Circular Fab page"),
          _buildDrawerMenu(),
          _buildIamge(),
          _buildTopHeader(),
          _buildWorkoutTitle(),
          _buildFab(),
        ],
      ),
    );
  }

  // buid drawer menu widget
  Widget _buildDrawerMenu() {
    return Scaffold(
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            // header
            new UserAccountsDrawerHeader(
              accountName: Text('Shoikat'),
              accountEmail: Text('Shoikat.cse@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: new BoxDecoration(color: Colors.red),
            ),

            //           // body

            //           // _buildDrawerListItem('Home', Icons.home),
            _buildDrawerListItem(context, 'Home', Icons.home),
            _buildDrawerListItem(context, 'My account', Icons.person),
            _buildDrawerListItem(context, 'Gym', Icons.directions_run),
            _buildDrawerListItem(context, 'Diet Plan', Icons.pregnant_woman),
            _buildDrawerListItem(context, 'Food', Icons.fastfood),
            _buildDrawerListItem(context, 'Tutorial', Icons.assignment),

            Divider(),

            _buildDrawerMenuItem(
                context, 'Settings', Icons.settings, Colors.blue),
            _buildDrawerMenuItem(context, 'About', Icons.help, Colors.green),
          ],
        ),
      ),
    );
  }

// buid drawer list item
  Widget _buildDrawerListItem(
      BuildContext context, String title, IconData icon) {
    // String icone =icon.toString();
    return InkWell(
      onTap: () => Navigator.of(context).pushNamed('/$title'),
      child: ListTile(
        title: Text(title),
        leading: Icon(icon),
      ),
    );
  }

  Widget _buildDrawerMenuItem(
      BuildContext context, String title, IconData icon, Color iconColor) {
    // String icone =icon.toString();
    return InkWell(
      onTap: () => Navigator.of(context).pushNamed('/$title'),
      child: ListTile(
        title: Text(title),
        leading: Icon(icon, color: iconColor),
      ),
    );
  }

// build image widget
  Widget _buildIamge() {
    return new ClipPath(
      clipper: new DialogonalClipper(),
      child: Column(
        children: <Widget>[
          new Image.asset(
            'assets/images/chest.jpg',
            fit: BoxFit.fitHeight,
            // fit: BoxFit.cover,
            height: _imageHeight,
            colorBlendMode: BlendMode.srcOver,
            color: new Color.fromARGB(120, 20, 10, 40),
          ),
        ],
      ),
    );
  }

// build top header widget
  Widget _buildTopHeader() {
    return new Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 32.0),
      child: new Row(
        children: <Widget>[
          new Icon(Icons.menu, size: 32.0, color: Colors.white),
          new Expanded(
            child: new Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: new Text(
                "Gym Training",
                style: new TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w300),
              ),
            ),
          ),
          new Icon(Icons.linear_scale, color: Colors.white),
        ],
      ),
    );
  }

// build workout title
  Widget _buildWorkoutTitle() {
    return new Padding(
      padding: new EdgeInsets.only(left: 16.0, top: _imageHeight / 2.5),
      child: new Row(
        children: <Widget>[
          new Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                new Text(
                  'Chest',
                  style: new TextStyle(
                      fontSize: 26.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w400),
                ),
                new Text(
                  '50 % complete',
                  style: new TextStyle(
                      fontSize: 14.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w300),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // build fab button widget
  Widget _buildFab() {
    return new Positioned(
        top: _imageHeight - 190.0,
        right: -40.0,
        child: new Column(
          children: <Widget>[
            new AnimatedFab(
              onClick: _changeFilterState,
            ),
            // new AnimatedFab(
            //   onClick: _changeFilterState,
            // ),
          ],
        ));
  }

  // change filter state calling by buildFab widget
  void _changeFilterState() {
    // showOnlyCompleted = !showOnlyCompleted;
    // tasks.where((task) => !task.completed).forEach((task) {
    //   if (showOnlyCompleted) {
    //     listModel.removeAt(listModel.indexOf(task));
    //   } else {
    //     listModel.insert(tasks.indexOf(task), task);
    //   }
    // });
  }
}
