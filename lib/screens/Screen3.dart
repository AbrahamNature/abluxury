import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               Text(
                  'Recent',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                 GestureDetector(
                  onTap: () {
                    Navigator.popAndPushNamed(context, '/Screen5');
                  },
                    child: Row(
                      children: [
                        Text(
                          'see all', style: TextStyle(
                            color: Colors.lightGreen,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        Icon(
                          Icons.chevron_right,
                          color: Colors.green, size:19,
                        )
                      ],
                    
                    )
                 )
              ],
            ),
             SizedBox(height: 16),
            Container(
              decoration: BoxDecoration(
                color:  Color.fromARGB(255, 250, 223, 241),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color:  Color.fromARGB(255, 234, 248, 174),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Icon(
                            Icons.payments,
                            color: Color.fromARGB(225, 42, 168, 70),
                          ),
                        ),
                        SizedBox(width: 12),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Salary',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'Feb 1 • Direct deposit',
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
                      '+\$6,200',
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
             SizedBox(height: 18),
            Container(
              decoration: BoxDecoration(
                color:  Color.fromARGB(255, 252, 220, 241),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding:  EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(143, 223, 14, 84),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Icon(
                            Icons.shopping_cart,
                            color: Color.fromARGB(206, 14, 235, 125),
                          ),
                        ),
                         SizedBox(width: 12),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:  [
                            Text(
                              'Groceries',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'aug. 31 • Supermarket',
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
                      '-\$84.20',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(160, 241, 41, 41),
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
                padding: EdgeInsets.all(16.0),
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
                            Icons.refresh,
                            color: Colors.green,
                          ),
                        ),
                         SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:  [
                            Text(
                              'Refund',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'sept 25 . Online store',
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
                      '+\$300.00',
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

            // Row 4: Subscription
            Container(
              decoration: BoxDecoration(
                color:  Color.fromARGB(255, 250, 224, 245),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding:  EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color:  Color.fromARGB(255, 194, 175, 9),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child:  Icon(
                            Icons.credit_card,
                            color: Color.fromARGB(255, 250, 247, 50),
                          ),
                        ),
                         SizedBox(width: 12),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Subscription',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'oct 06 . Streaming',
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
                      '-\$4.09',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color:  Color.fromARGB(234, 236, 13, 13),
                      ),
                    ),
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