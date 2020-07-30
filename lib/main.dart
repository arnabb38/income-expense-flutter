import 'package:flutter/material.dart';
import 'package:inc_exp/homepage.dart';
import 'package:inc_exp/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Income Expense',
      darkTheme: ThemeData.dark(),
      home: Homepage(),
    );
  }
}
