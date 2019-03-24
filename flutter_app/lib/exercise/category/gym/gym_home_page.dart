import 'package:flutter/material.dart';
import 'package:flutter_app/exercise/db/gym_list.dart';
import 'package:flutter_app/exercise/ui/home/workout_home_page_body.dart';

class GymHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Column(
        children: <Widget>[
          // new GradientAppBar("GYM"),
          // MultipageAppBar(),
          new WorkoutHomePageBody(workout: gymWorkouts),
        ],
      ),
    );
  }
}
