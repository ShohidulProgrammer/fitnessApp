import 'package:flutter/material.dart';
import 'package:flutter_app/exercise/db/diet_list.dart';
import 'package:flutter_app/exercise/ui/home/workout_home_page_body.dart';
// import 'package:flutter_app/src/components/appbar/multipage_appbar.dart';

class DietHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      // MultipageAppBar(),
      body: new Column(
        children: <Widget>[
          // new GradientAppBar("GYM"),
          // MultipageAppBar(),
          new WorkoutHomePageBody(workout: dietWorkouts),
        ],
      ),
    );
  }
}
