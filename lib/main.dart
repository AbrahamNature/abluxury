
import 'package:flutter/material.dart';
import './screens/HomeScreen.dart';
import './screens/Screen1.dart';
import './screens/Screen2.dart';
import './screens/Screen3.dart';
import './screens/Screen4.dart';
import './screens/Screen5.dart';
import './screens/Screen6.dart';
import './screens/Screen7.dart';
import './screens/Screen8.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Poppins',
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.black87,
       ),
      ),
     
      debugShowCheckedModeBanner: false,
      initialRoute: "/screen7",
      routes: {
        "/": (context) => HomeScreen(),
        "/screen1": (context) => Screen1(),
        "/screen2": (context) => Screen2(),
        "/screen3": (context) => Screen3(),
        "/screen4": (context) => Screen4(),
        "/screen5": (context) => Screen5(),
        "/screen6": (context) => Screen6(),
        "/screen7": (context) => Screen7(),
        "/screen8": (context) => Screen8(),
      },
    );
  }
}
