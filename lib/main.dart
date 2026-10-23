
import 'package:flutter/material.dart';
import './screens/HomeScreen.dart';
import './screens/Screen1.dart';
import './screens/Screen2.dart';
import 'screens/Screen3.dart';
//import './screens/Screen4.dart';
import 'screens/Screen5.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/screen5",
      routes: {
        "/": (context) => HomeScreen(),
        "/screen1": (context) => Screen1(),
        "/screen2": (context) => Screen2(),
        "/screen3": (context) => Screen3(),
        //"/screen4": (context) => Screen4(),
        "/screen5": (context) => Screen5(),
      }
    );
  }
}
