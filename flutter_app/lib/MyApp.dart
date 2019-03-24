import 'package:flutter/material.dart';
import 'package:flutter_app/exercise/category/diet/diet_home_page.dart';
import 'package:flutter_app/exercise/category/gym/gym_home_page.dart';
import 'package:flutter_app/src/components/appbar/multipage_appbar.dart';

// my imports
import 'package:flutter_app/src/pages/HomePage.dart';

// bmi calculator
import 'package:flutter_app/bmi_calculator/input_page/bmi_input_page.dart';
import 'package:flutter_app/bmi_calculator/styles.dart';

// food
import 'package:flutter_app/exercise/category/food/food.dart';

// grocery
import 'package:flutter_app/grocery/grocery_myapp.dart';

// login
import 'package:flutter_app/login/my_login_app.dart';
import 'package:flutter_app/login/profile/myAccount.dart';

// Menu
import 'package:flutter_app/src/menu/settings.dart';

import 'package:flutter_app/src/components/DrawerMenu.dart';
import 'package:flutter_app/src/components/bottom_navigation_bar.dart';
// company info
import 'package:flutter_app/src/pages/companyinfo/about.dart';
import 'package:flutter_app/src/pages/companyinfo/contact.dart';
import 'package:flutter_app/tutorial/tutorialPage.dart';

import 'package:flutter_app/src/components/fab/fab_circle.dart';
import 'package:flutter_app/src/animation/slide_left_transection_route.dart';

// route animation transection
import 'package:flutter_app/src/animation/scale_route.dart';
import 'package:flutter_app/src/animation/slide_right_transection_route.dart';

// use this syntex for navigation
// Navigator.push(
//   context,
//   SlideRightRoute(widget: DietPlanPage()),
// );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Exercise Management System',
      theme: new ThemeData(
        primaryColor: mainDarkCyan, //mainBlue,
        fontFamily: 'SF Pro Display',
      ),

      home: new BottomNavBar(),

      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case '/':
            return SlideRightRoute(widget: HomePage());
            break;
          case '/Home':
            return SlideLeftRoute(widget: HomePage());
            break;
          case '/fab_circle':
            return SlideRightRoute(widget: FabMenu());
            break;
          case '/bmiInput(),':
            return SlideRightRoute(widget: BmiInputPage());
            break;
          case '/drawer':
            return SlideRightRoute(widget: DrawerMenu());
            break;
          case '/My account':
            return SlideRightRoute(widget: MyAccountPage());
            break;
          case '/login':
            return SlideRightRoute(widget: MyLoginApp());
            break;
          case '/Gym':
            return SlideLeftRoute(widget: MultipageAppBar());
            break;
          case '/Diet Plan':
            return SlideLeftRoute(widget: DietHomePage());
            break;
          case '/Food':
            return SlideLeftRoute(widget: FoodPage());
            break;
          case '/BIM':
            return SlideLeftRoute(widget: GymHomePage());
            // return SlideLeftRoute(widget: BMIPage());
            break;
          case '/shop':
            return SlideLeftRoute(widget: MyGroceryApp());
            // return SlideLeftRoute(widget: BMIPage());
            break;
          case '/Tutorial':
            return ScaleRoute(widget: TutorialPage());
            break;
          case '/Contact':
            return ScaleRoute(widget: ContactPage());
            break;
          case '/Settings':
            return ScaleRoute(widget: SettingsPage());
            break;
          case '/About':
            return ScaleRoute(widget: AboutPage());
            break;
        }
      },
      // routes: <String, WidgetBuilder>{
      //   '/My account' : (BuildContext context) => new MyAccountPage(),
      //   '/BIM' : (BuildContext context) => new BMIPage(),
      //   '/Food' : (BuildContext context) => new FoodPage(),
      //   '/Diet Plan' : (BuildContext context) => new DietPlanPage(),
      //   '/Contact': (BuildContext context) => new ContactPage(),
      //   '/Gym': (BuildContext context) => new GymScreen(),
      //   '/Tutorial': (BuildContext context) => new TutorialScreen(),
      //   '/Home': (BuildContext context) => new HomePage(),
      //   '/About': (BuildContext context) => new AboutPage(),
      //   '/Settings': (BuildContext context) => new SettingsPage(),
      // },
    );
  }
}
