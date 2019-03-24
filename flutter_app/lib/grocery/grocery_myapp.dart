import 'package:flutter/material.dart';

// my imports
import 'package:flutter_app/grocery/grocery_src/gpages/grocery_home.dart';

// my import

class MyGroceryApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter UIs',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: GroceryHomePage(),
    );
  }
}
