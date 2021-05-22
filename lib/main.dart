import 'package:flutter/material.dart';
import 'package:sedi_demo/screens/analysis.dart';
import 'package:sedi_demo/screens/calendar.dart';
import 'package:sedi_demo/screens/home.dart';
import 'package:sedi_demo/screens/tags.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: 'home',
      routes: {
        'home': (context) => HomePage(),
        'calendar': (context) => CalendarPage(),
        'analysis': (context) => Analysis(),
        'tags': (context) => Tags(),
      },
      theme: ThemeData(
        fontFamily: 'Oswald',
      ),
      home: HomePage(),
    );
  }
}

