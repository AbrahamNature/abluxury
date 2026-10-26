import 'package:flutter/material.dart';
import 'Screen5.dart';
class Screen4 extends StatelessWidget {
  const Screen4 ({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.all(19.0),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               Text(
                  "today's Menu",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
               
                 GestureDetector(
                  onTap: () {
                    Navigator.popAndPushNamed(context, '/Screen5');
                  },
                  child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 8.0,
                  ),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 175, 168, 174),
                    borderRadius: BorderRadius.circular(20),
                  ),
                   
                    child: Row(
                      children: [
                        Text(
                          '7 items', style: TextStyle(
                            color: Color.fromARGB(255, 10, 15, 5),
                            fontWeight: FontWeight.bold
                          ),
                        ),
                       
                      ],
                    ),
                  ),
                 ),
              ],
            ),
             SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                color:  Color.fromARGB(255, 250, 223, 241),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: EdgeInsets.all(17.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(18),
                          decoration: BoxDecoration(
                            color:  Color.fromARGB(255, 49, 201, 247),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Icon(
                            Icons.ramen_dining,
                            color: Color.fromARGB(223, 48, 7, 229),
                          ),
                        ),
                        SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'spicy\nRamen\nbowl',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'rich broth-\npork belly',
                              style: TextStyle(
                                color: Color.fromARGB(129, 172, 169, 169),
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                     Text(
                      '\$15,500',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color:  Color.fromARGB(255, 19, 241, 26),
                      ),
                    ),
                  ],
                ),
              ),
            ),
             SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                color:  Color.fromARGB(255, 249, 205, 227),
                borderRadius: BorderRadius.circular(17),
              ),
              child: Padding(
                padding: EdgeInsets.all(17.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding:  EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color:  Color.fromARGB(255, 240, 153, 153),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Icon(
                            Icons.eco,
                            color: Color.fromARGB(235, 245, 246, 245),
                          ),
                        ),
                         SizedBox(width: 12),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:  [
                            Text(
                              'Caesar\nSalad',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'Crisp green-\nParmesan',
                              style: TextStyle(
                                color: Color.fromARGB(246, 27, 1, 1),
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                     Text(
                      '\$10.0',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 4, 250, 33),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                color:  Color.fromARGB(255, 252, 220, 241),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: EdgeInsets.all(17.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding:  EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color:  Color.fromARGB(143, 223, 14, 84),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Icon(
                            Icons.local_pizza,
                            color: Color.fromARGB(255, 248, 250, 249),
                          ),
                        ),
                         SizedBox(width: 12),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:  [
                            Text(
                              'Margherita\nPizza',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'Wood-fired ·\nBasil',
                              style: TextStyle(
                                color: Color.fromARGB(139, 116, 113, 113),
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                     Text(
                      '\$14.20',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(224, 10, 247, 22),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                color:  Color.fromARGB(255, 252, 220, 241),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: EdgeInsets.all(17.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding:  EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color:  Color.fromARGB(250, 68, 235, 85),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Icon(
                            Icons.lunch_dining,
                            color: Color.fromARGB(255, 245, 243, 245),
                          ),
                        ),
                         SizedBox(width: 12),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:  [
                            Text(
                              'Beef Tacos',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'Three pieces · Salsa',
                              style: TextStyle(
                                color: Color.fromARGB(139, 116, 113, 113),
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                     Text(
                      '\$10.25',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(231, 3, 232, 23),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                color:  Color.fromARGB(255, 252, 220, 241),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: EdgeInsets.all(17.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding:  EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color:  Color.fromARGB(239, 245, 245, 243),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Icon(
                            Icons.cake,
                            color: Color.fromARGB(255, 235, 14, 14),
                          ),
                        ),
                         SizedBox(width: 12),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:  [
                            Text(
                              'Chocolate Cake',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'Rich · Ganache',
                              style: TextStyle(
                                color: Color.fromARGB(139, 116, 113, 113),
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                     Text(
                      '\$7.0',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 6, 228, 17),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            
              SizedBox(height: 18),
            Container(
              decoration: BoxDecoration(
                color:  Color.fromARGB(244, 248, 212, 230),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: EdgeInsets.all(17.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding:  EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color:  Color.fromARGB(90, 121, 118, 118),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Icon(
                            Icons.local_cafe,
                            color: const Color.fromARGB(255, 97, 38, 63),
                          ),
                        ),
                         SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:  [
                            Text(
                              'Iced Latte',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'Cold brew · Oat\nmilk',
                              style: TextStyle(
                                color: Color.fromARGB(167, 112, 108, 108),
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                     Text(
                      '\$5.00',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 7, 228, 14),
                      ),
                    ),
                  ],
                ),
              ),
            ),
             SizedBox(height: 18),
            Container(
              decoration: BoxDecoration(
                color:  Color.fromARGB(255, 254, 227, 249),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding:  EdgeInsets.all(17.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color:  Color.fromARGB(255, 228, 222, 161),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child:  Icon(
                            Icons.set_meal_rounded,
                            color: Color.fromARGB(255, 251, 251, 246),
                          ),
                        ),
                         SizedBox(width: 12),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Ice Fish',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'sea foods',
                              style: TextStyle(
                                color: Color.fromARGB(103, 110, 107, 107),
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Text(
                      '\$2000.0',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color:  Color.fromARGB(234, 9, 242, 6),
                      ),
                    ),
                     SizedBox(height: 15),
                     IconButton(
  icon: Icon(Icons.arrow_forward_ios, color:  Color.fromARGB(255, 8, 240, 85)),
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Screen5(), 
      ),
    );
  },
)

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}