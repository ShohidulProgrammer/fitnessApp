import 'package:flutter/material.dart';

import 'package:flutter_app/exercise/model/workout_model.dart';

// my imports
import 'package:flutter_app/exercise/ui/common/workout_summary.dart';

class WorkoutHomePageBody extends StatelessWidget {
  final List<Workout> workout;
  WorkoutHomePageBody({Key key, @required this.workout});

  @override
  Widget build(BuildContext context) {
    return new Expanded(
      child: new Container(
        // color: new Color(0xFF736AB7),
        child: new CustomScrollView(
          scrollDirection: Axis.vertical,
          shrinkWrap: false,
          slivers: <Widget>[
            new SliverPadding(
              padding: const EdgeInsets.symmetric(vertical: 24.0),
              sliver: new SliverList(
                delegate: new SliverChildBuilderDelegate(
                  // (context, index) => new WorkoutSummary(gymWorkouts[index]),
                  // childCount: gymWorkouts.length,
                  (context, index) => new WorkoutSummary(workout[index]),
                  childCount: workout.length,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
