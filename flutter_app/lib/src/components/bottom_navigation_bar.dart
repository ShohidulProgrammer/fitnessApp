import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_app/bmi_calculator/input_page/bmi_input_page.dart';
import 'package:flutter_app/exercise/category/gym/gym_home_page.dart';

// my imports
// import 'package:flutter_app/exercise/ui/home/gym_home_page.dart';
import 'package:flutter_app/grocery/grocery_src/gpages/grocery_home.dart';

import 'package:flutter_app/src/components/DrawerMenu.dart';

class BottomNavBar extends StatefulWidget {
  BottomNavBar({
    Key key,
  }) : super(key: key);
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        // appBar: new AppBar(
        //   title: _pageTitle[_selectedPage], //new Text('Home'),
        //   // backgroundColor: Colors.deepOrangeAccent,
        // ),
        drawer: DrawerMenu(),
        bottomNavigationBar: CurvedNavigationBar(
          initialIndex: 0,
          items: <Widget>[
            Icon(Icons.fitness_center, size: 30),
            Icon(Icons.shopping_cart, size: 30),
            Icon(Icons.local_hospital, size: 30),
            Icon(Icons.unfold_more, size: 30),
          ],
          color: Colors.white,
          buttonBackgroundColor: Colors.white,
          backgroundColor: Colors.blueAccent,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 400),
          onTap: (index) {
            setState(() {
              _selectedPage = index;
            });
          },
        ),
        body: Container(
          color: Colors.blueAccent,
          child: Center(
            child: _pageOptions[_selectedPage],
          ),
        ));
  }

  // pages class
  final _pageOptions = [
    GymHomePage(),
    // MultipageAppBar(),
    // MyAccountPage(),
    GroceryHomePage(),
    //DietPlanPage(),
    BmiInputPage(),
    // TutorialPage(),
    DrawerMenu(),
    // SettingsPage(),
    // AboutPage(),
  ];

  // // pages Title
  // final _pageTitle = [
  //   Text("Gym"),
  //   Text("Glosery"),
  //   // MyAccountPage(),
  //   //DietPlanPage(),
  //   Text("BIM"),
  //   Text("More Pages"),
  //   // TutorialPage(),
  //   // SettingsPage(),
  //   // AboutPage(),
  // ];
}
