import 'package:flutter/material.dart';

class Screen8 extends StatefulWidget{
  const Screen8({super.key});

  @override
  State<Screen8> createState() => _Screen8();
}
class _Screen8 extends State<Screen8> {
late Map<String, dynamic> user1 = {
'name': 'micheal smith',
'age': 30,
'employment': 'lawyer'
};
late Map<String, dynamic> user2 = {
'name': 'Agabi Isa',
'age':70,
'employment': 'Doctor'
};
late Map<String, dynamic> user3 = {
'name': 'josh clinton',
'age': 40,
'employment': 'banker'
};
late Map<String, dynamic> user4 = {
'name': 'De don',
'age': 35,
'employment': 'Trader'
};
late Map<String, dynamic> user5 = {
'name': 'Abrahama Neh',
'age': 29,
'employment': 'Nurse'
};
 
late List<Map<String, dynamic>> users = [user1,user2,user3,user4,user5];

  late double screenwidth = MediaQuery.of(context).size.width;
late double screenheight = MediaQuery.of(context).size.height;
Widget Bestcard(String name, int age, String employment) {
  
return Column(
  children: [
    Container(
      width: screenwidth * 0.9,
      padding: EdgeInsets.all(10),
      height: screenheight *0.3,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'name: $name',
                style: TextStyle(fontSize: 28, fontFamily: 'Poppins', fontWeight: FontWeight.w700),

              )
            ],
          ),
          Row(
            children: [
              Text(
                'Age $age',
                style: TextStyle(fontSize: 28, fontFamily: 'Poppins', fontWeight: FontWeight.w700),

              )
            ],
          ),
          Row(
            children: [
              Text(
                'employment status: $employment',
                style: TextStyle(fontSize: 28, fontFamily: 'Poppins', fontWeight: FontWeight.w700),

              )
            ],
          ),
        ],
      ),
    ),
    SizedBox(height: 50),
  ]
);
}
@override
  Widget build(BuildContext context){
  return Scaffold(
    body: Container(
      height: screenheight,
      width: screenwidth,
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ...users.map((obj) =>
            Bestcard(obj['name'],obj['age'],obj['employment']),
          ),
        ],
      ),
      ),
      
    ),
  );
}
}