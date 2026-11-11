import 'package:flutter/material.dart';

class Screen11 extends StatefulWidget {
  const Screen11({super.key});

  @override
  State<Screen11> createState() => _Screen11();
}

class _Screen11 extends State<Screen11> {
  late double screenwidth = MediaQuery.of(context).size.width;
  late double screenheight = MediaQuery.of(context).size.height;

  @override
  Widget build(BuildContext context) {


    
    return Scaffold(
      body: Container(
        height: screenheight,
        width: screenwidth,
        color: Colors.white,
        padding: EdgeInsets.all(11),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 400,
                height: 400,
                child: Image.network('https://cdn2.thecatapi.com/images/vu.jpg', width: 400, height: 400, fit: BoxFit.cover),
              )
            ],
          ),
        ),
      ),
    );
  }
}
