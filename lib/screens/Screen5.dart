import 'package:flutter/material.dart';

class Screen5 extends StatefulWidget{
  @override
  State<Screen5> createState() => _Screen5();
}
class _Screen5  extends State<Screen5> {
late String box1 = '';
late String box2 = '';
late String box3 = '';
late String box4 = '';
late String box5 = '';
late String box6 = '';
late String box7 = '';
late String box8 = '';
late String box9 = '';
late int player = 1;

void  marker(String boxnumber) {
  setState(() {
    if (boxnumber =='1') {
      if (box1 != '') return;
      if (player ==1) {
        box1 = 'x';
        player =2;
      } else if (player ==2) {
        box1 = 'o';
        player =1;

      }

    } else if (boxnumber =='2') {
      if (box2 !='') return; 
      if (player ==1) {
        box2 = 'x';
        player = 2;

      }else if (player == 2) {
        box2 = 'o';
        player = 1;
      }
    } else if (boxnumber =='1') {
      if (box2 !='') return;
      if (player ==1) {
        box2 = 'o';
        player = 2;

      }else if (player == 2) {
        box2 = 'o';
        player = 1;
      }
    } else if (boxnumber =='2') {
      if (box2 !='') return;
      if (player ==1) {
        box2 = 'x';
        player = 2;

      }else if (player == 2) {
        box2 = 'o';
        player = 1;
      }
    } else if (boxnumber =='1') {
      if (box2 !='') return;
      if (player ==1) {
        box2 = 'x';
        player = 2;

      }else if (player == 2) {
        box2 = 'o';
        player = 1;
      }
    } else if (boxnumber =='2') {
      if (box2 !='') return;
      if (player ==1) {
        box2 = 'x';
        player = 2;

      }else if (player == 2) {
        box2 = 'o';
        player = 1;
      }
    } else if (boxnumber =='1') {
      if (box2 !='') return;
      if (player ==1) {
        box2 = 'x';
        player = 2;

      }else if (player == 2) {
        box2 = 'o';
        player = 1;
      }
    } else if (boxnumber =='2') {
      if (box2 !='') return;
      if (player ==1) {
        box2 = 'x';
        player = 2;

      }else if (player == 2) {
        box2 = 'o';
        player = 1;
      }
    } else if (boxnumber =='1') {
      if (box2 !='') return;
      if (player ==1) {
        box2 = 'x';
        player = 2;

      }else if (player == 2) {
        box2 = 'o';
        player = 1;
      }
    } else if (boxnumber =='3') {
      box3 ='x';
    } else if (boxnumber =='4') {
      box4 ='o';
    } else if (boxnumber =='5') {
      box5 ='x';
    } else if (boxnumber =='6') {
      box6 ='o';
    } else if (boxnumber =='7') {
      box7 ='x';
    } else if (boxnumber =='8') {
      box8 ='o';
    } else if (boxnumber =='9') {
      box9 ='x'; 
 
    }
  });
}

Widget customBox(String boxname, String boxnumber) {
  return GestureDetector(
    onTap: () {
      marker(boxnumber);
    },
    child: Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black,width: 2.0)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [Text(boxname, style: TextStyle(fontSize:50 ))],
      ),
    )
  );
}
Widget build(BuildContext context) {
  late double screenwidth =MediaQuery.of(context).size.width;
  late double screenheight =MediaQuery.of(context).size.height;
  return Scaffold(
    body: Container(
      height: screenheight,
      width: screenwidth,
      color: Colors.amberAccent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              customBox(box1, '1'),
              customBox(box2, '2'),
              customBox(box3, '3'),
            ],
          ),
          Row(
             mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              customBox(box4, '4'),
              customBox(box5, '5'),
              customBox(box6, '6'),
            ],
          ),
          Row(
             mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              customBox(box7, '7'),
              customBox(box8, '8'),
              customBox(box9, '9'),
            ],
          ),

        ],
      ),
    ),
  );
}
}