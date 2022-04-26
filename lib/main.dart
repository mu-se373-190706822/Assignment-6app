import 'package:flutter/material.dart';
import 'package:login_regaister/dbScreen.dart';
import 'package:login_regaister/loginScreen.dart';
void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: loginScreen(),
    routes: {
      '/home': (context) => loginScreen(),
      '/data': (context) => dbScreen(),
    });
  }
}







