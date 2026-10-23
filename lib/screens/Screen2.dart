import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product'),
        backgroundColor:  Color.fromARGB(255, 156, 247, 191),
        foregroundColor:  Color.fromARGB(255, 2, 6, 10),
       
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
          Navigator.pop(context);
          },
        ),
      ),

      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              color:  Color.fromARGB(255, 247, 208, 221),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(30)
              ),
              child: Padding(
                padding: EdgeInsets.all(40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 90,
                  height: 90,
                  decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child:  Icon(
                    Icons.headphones_battery,
                    size: 42,
                  ),
                ),
                 SizedBox(width: 18),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       Text(
                        'Wireless Headphones',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                       SizedBox(height: 10),
                      Text('AUDIO · OVER-EAR'),
                      SizedBox(height: 18),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.amber, size: 16),
                          SizedBox(width: 4),
                          Text('4.8'),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
             SizedBox(height: 30),
             Text(
              'Premium sound, 40 hours battery life, active noise cancellation, Bluetooth 5.2, and comfortable all-day listening.',
              style: TextStyle(
                fontSize: 14,
                height: 1.9,
              ),
            ),
            SizedBox(height: 20),
            Container(
              
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color:  Color.fromARGB(255, 125, 250, 163),
                borderRadius: BorderRadius.circular(18)
              ),
              child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                      SizedBox(height: 50,),
                    Text(
                      'PRICE',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Colors.amber,
                      ),
                    ),
                    SizedBox(height: 10),
                    
                    Text(
                      '\$89.00',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
               
                ElevatedButton.icon(
                  onPressed: () {Navigator.pushNamed(context,'/screen3');
                  },
                  
                  style: ElevatedButton.styleFrom(
                    backgroundColor:  Color.fromARGB(255, 145, 252, 186),
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 40,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  icon: Icon(Icons.shopping_cart, size: 18),
                  label:  Text(
                    'BUY NOW',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
              )
            )
                  ]
                ),
              ),
            
            ),
          ],
        )
      ),
        );
  }
}