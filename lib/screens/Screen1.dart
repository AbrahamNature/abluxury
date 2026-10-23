import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contact"),
        backgroundColor: const Color.fromARGB(255, 136, 248, 168),
        foregroundColor: const Color.fromARGB(215, 21, 12, 12),
        elevation: 10,
         leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
          ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            // Avatar
            Container(
              width: 100,
              height: 100,
              decoration: const BoxDecoration(
                color: Color.fromARGB(214, 46, 203, 112),
                shape: BoxShape.circle,
              ),
              child: const Center(
                child: Text(
                  "AB",
                  style: TextStyle(
                    color: Color.fromARGB(255, 4, 2, 2),
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

             SizedBox(height: 50),

  
              Text(
              "Abraham Nature",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            // Role
             Text(
              "Flutter Developer",
              style: TextStyle(
                fontSize: 18,
                color: Colors.black87,
              ),
            ),

             SizedBox(height: 20),
             Container( 
              decoration: BoxDecoration(
                color: const Color.fromARGB(238, 244, 183, 183),
                borderRadius: BorderRadius.circular(10)
              ),
              padding: const EdgeInsetsGeometry.all(40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:[
                  Icon(Icons.email, color:const Color.fromARGB(160, 47, 226, 53)),
                  SizedBox(width: 20),
                  Text("Abrahamaisa001@gmail.com"),
                  
                ],
              )

              ),
             SizedBox(height: 20),

            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 246, 196, 213),
                borderRadius: BorderRadius.circular(10),
                ),
              padding: const EdgeInsetsGeometry.all(40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:[
                  Icon(Icons.phone, color:const Color.fromARGB(160, 39, 230, 45)),
                  SizedBox(width: 30),
                  Text("+234 906 1855 400"),
                ]
              ) 
           ),
            IconButton(
          icon: Icon(Icons.arrow_forward),
          onPressed: () {
            Navigator.pushNamed(context, '/screen2');
          },
          
          ),
         ]
         ),
       )
      );
    
  }
}