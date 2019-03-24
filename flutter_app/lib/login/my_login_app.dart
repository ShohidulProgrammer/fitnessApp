import 'package:flutter/material.dart';

// my import
import 'package:flutter_app/login/login_src/login_home.dart';

class MyLoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo Login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginHomePage(title: 'Login Page'),
    );
  }
}
