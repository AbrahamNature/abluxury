import 'package:abluxury/screens/Screen1.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
 @override
 Widget build(BuildContext context) {
   late double screenwidth = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: AppBar(
          title: Text("profile"),
            automaticallyImplyLeading: false,
            backgroundColor: const Color.fromARGB(238, 164, 246, 188),
            ),
            body: Padding(
                padding: EdgeInsetsGeometry.all(20),
            child: Column(
                children: [
                    Row(                      
                        children: [
                            CircleAvatar(                            
                                backgroundColor: const Color.fromARGB(181, 90, 229, 124),
                                foregroundColor: const Color.fromARGB(255, 42, 35, 35),
                                radius: 50,
                                child: Text('AB', style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                ),),
                            ),
                            SizedBox(width: 20),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                   Text('Abraham Nature', style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                   ),
                                    ),
                                    Text(
                                        'flutter Developer',
                                        style: TextStyle(
                                            color: Colors.black
                                        )
                                    )
                                ],
                            )
                            
                    
                        ],
                    ), 
                    const SizedBox(height: 20),
                                Container(
                        height: 80,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 249, 216, 216),
                            borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                            children: [
                                Container(
                                    width: screenwidth * 0.3,
                                    child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [Text('100', style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black87 
                                        ),),Text('POST')],
                                    ),    
                                ),
                                Container(
                                    width: screenwidth * 0.3,
                                    child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [Text('5M', style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                             
                                        ),), Text('FOLLOWERS')],
                                    ),    
                                ),
                                Container(
                                    width: screenwidth * 0.3,
                                    child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [Text('205', style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold
                                        ),), Text('FOLLOWING')],
                                    ),    
                                )
                            ],
                        ),
                    ),
                    SizedBox(height: 22),
                    Container(
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 249, 213, 213),
                            borderRadius: BorderRadius.circular(10),
                        ),
                        height: 140,
                        padding: EdgeInsetsGeometry.all(20),
                        child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [Text('About', style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold
                                        ),), Text('Building mobile apps with Flutter. Coffee-driven. Based in Abuja.'
                                        'we build with strength, passion and determination')],
                                        
                                    ),
                                ),
                                SizedBox(height: 10),
                    Container(
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 249, 249, 252),
                            borderRadius: BorderRadius.circular(0),
                        ),
                       height: 20,
                        padding: EdgeInsetsGeometry.all(10),
                        child: Column(
                        ),
                        ),
                                SizedBox(height: 10),
                                ElevatedButton(onPressed:() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>  Screen1(),
                                    ));
                                },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color.fromARGB(255, 151, 234, 151),
                                    fixedSize: Size(screenwidth * 1, 70)
                                ),
                                 child: Text("+ follow", style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    ),
                                 )),

                              ], 
                            )
                         ),
                      );
                    }
                  }
