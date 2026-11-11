import 'package:flutter/material.dart';

class Box extends StatelessWidget{
  late String name;
  late String imagescr;
  Box({super.key, required this.name, required this.imagescr});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        child: Column(
          children: [
           // ClipRRect(
             // borderRadius: BorderRadiusGeometry.circular(12),
              //child: Image.asset(
                //imagescr,
                //width: 120,
                //height: 180,
                //fit: BoxFit.cover,
              //),
            //)
          ],
        ),
      ),
    );
  }
}