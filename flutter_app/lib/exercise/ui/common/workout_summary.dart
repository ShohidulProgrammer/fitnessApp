import 'package:flutter/material.dart';
import 'package:flutter_app/exercise/model/workout_model.dart';
import 'package:flutter_app/exercise/ui/detail/workout_detail_page.dart';
import 'package:flutter_app/exercise/ui/style/separator.dart';
import 'package:flutter_app/exercise/ui/style/text_style.dart';

class WorkoutSummary extends StatelessWidget {
  final Workout workout;
  final bool horizontal;

  WorkoutSummary(this.workout, {this.horizontal = true});

  WorkoutSummary.vertical(this.workout) : horizontal = false;

  @override
  Widget build(BuildContext context) {
    final workoutThumbnail = new Container(
      margin: new EdgeInsets.symmetric(vertical: 16.0),
      alignment:
          horizontal ? FractionalOffset.centerLeft : FractionalOffset.center,
      child: new Hero(
        tag: "workout-hero-${workout.id}",
        child: new Image(
          image: new AssetImage(workout.avater),
          height: 92.0,
          width: 92.0,
        ),
      ),
    );

    Widget _workoutValue({String value, String image}) {
      return new Container(
        child: new Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
          new Image.asset(image, height: 12.0),
          new Container(width: 8.0),
          new Text(value, style: Style.smallTextStyle),
        ]),
      );
    }

    final workoutCardContent = new Container(
      margin: new EdgeInsets.fromLTRB(
          // horizontal ? 76.0 : 16.0, horizontal ? 16.0 : 42.0, 16.0, 16.0),
          horizontal ? 60.0 : 12.0,
          horizontal ? 12.0 : 36.0,
          12.0,
          12.0),
      constraints: new BoxConstraints.expand(),
      child: new Column(
        crossAxisAlignment:
            horizontal ? CrossAxisAlignment.start : CrossAxisAlignment.center,
        children: <Widget>[
          // new Container(height: 4.0),
          new Container(height: 4.0),
          new Text(workout.benefit, style: Style.titleTextStyle),
          // new Container(height: 10.0),
          new Container(height: 10.0),
          new Text(workout.name, style: Style.commonTextStyle),
          new Separator(),
          new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Expanded(
                  // flex: horizontal ? 1 : 0,
                  // flex: horizontal ? 0 : 0,
                  child: _workoutValue(
                      value: workout.reps,
                      image: 'assets/exercise_assets/exercise_icons/reps.png')),
              new Container(
                // width: horizontal ? 8.0 : 32.0,
                width: horizontal ? 4.0 : 10.0,
              ),
              new Expanded(
                  // flex: horizontal ? 1 : 0,

                  child: _workoutValue(
                      value: workout.sets,
                      image: 'assets/exercise_assets/exercise_icons/set.png')),
            ],
          ),
        ],
      ),
    );

    final workoutCard = new Container(
      child: workoutCardContent,
      height: horizontal ? 124.0 : 154.0, //horizontal ? 124.0 : 154.0,
      margin: horizontal
          ? new EdgeInsets.only(left: 40.0) // left: 46.0
          : new EdgeInsets.only(top: 72.0), // top: 72.0)
      decoration: new BoxDecoration(
        color: new Color(0xFF333366),
        shape: BoxShape.rectangle,
        borderRadius: new BorderRadius.circular(8.0),
        boxShadow: <BoxShadow>[
          new BoxShadow(
            color: Colors.black12,
            blurRadius: 10.0,
            offset: new Offset(0.0, 10.0),
          ),
        ],
      ),
    );

    return new GestureDetector(
        onTap: horizontal
            ? () => Navigator.of(context).push(
                  new PageRouteBuilder(
                    pageBuilder: (_, __, ___) => new WorkoutDetailPage(workout),
                    transitionsBuilder: (context, animation, secondaryAnimation,
                            child) =>
                        new FadeTransition(opacity: animation, child: child),
                  ),
                )
            : null,
        child: new Container(
          margin: const EdgeInsets.symmetric(
            // vertical: 16.0,
            // horizontal: 24.0,
            vertical: 12.0,
            horizontal: 20.0,
          ),
          child: new Stack(
            children: <Widget>[
              workoutCard,
              workoutThumbnail,
            ],
          ),
        ));
  }
}
