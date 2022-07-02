import 'package:firebaselogin/SignIn.dart';
import 'package:firebaselogin/SignUp.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Homepage.dart';
import 'SignUp.dart';
import 'package:project2/SignIn.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Firebase Login',
      theme: ThemeData(),
      home: HomePage(),
      routes: {
        '/home': (BuildContext context)=> HomePage(),
        '/signin': (BuildContext context)=> SignIn(),
        '/signup': (BuildContext context)=> SignUp(),
      },
    );
  }
}