import 'package:flutter/material.dart';
import '../style/theme.dart';
import '../screen/screens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'task',
      theme: AppTheme.lightTheme(),
      home: MyHomePage(),
    );
  }
}
