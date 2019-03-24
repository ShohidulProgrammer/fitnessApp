import 'package:flutter/material.dart';

import 'package:flutter_app/exercise/category/food/food.dart';
import 'package:flutter_app/exercise/category/gym/gym_home_page.dart';
import 'package:flutter_app/exercise/category/water/waterPage.dart';

class MultipageAppBar extends StatefulWidget {
  // final Widget child;

  // MultipageAppBar({Key key, this.child}) : super(key: key);

  _MultipageAppBarState createState() => _MultipageAppBarState();
}

class _MultipageAppBarState extends State<MultipageAppBar>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    tabController = TabController(vsync: this, length: 3);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("Gym"),
        bottom: TabBar(
          controller: tabController,
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.fitness_center),
              text: "Routine",
            ),
            Tab(
              icon: Icon(Icons.fastfood),
              text: "Food",
            ),
            Tab(
              icon: Icon(Icons.free_breakfast),
              text: "Water",
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: <Widget>[
          GymHomePage(),
          FoodPage(),
          WaterPage(),
        ],
      ),
    );
  }
}

class MultiScreenAppBar extends AppBar {
  MultiScreenAppBar({Key key, Widget title, Widget bottom})
      : super(key: key, title: title, bottom: bottom, actions: <Widget>[
          IconButton(
            icon: Icon(Icons.fitness_center),
            onPressed: () => print("tap"),
          ),
        ]);
}
