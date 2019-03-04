import 'package:flutter/material.dart';
import './Homepage.dart';
void main()
{
  runApp( new MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(debugShowCheckedModeBanner: false,
        theme: new ThemeData(
      primaryColor: Colors.black,
      primaryIconTheme: IconThemeData(color: Colors.black),
      textTheme: TextTheme(title: TextStyle(color: Colors.black))

    ),
        title: 'instagram page',home:
      Homepage());
  }
}
