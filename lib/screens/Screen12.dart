import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int count = 7;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE9EDF2),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text(
              'Tap Counter',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 30, 34, 46),
              ),
            ),
           SizedBox(height: 6),
            Text(
              'Use the buttons below',
              style: TextStyle(fontSize: 14, color: Color(0xFF5B6B8C)),
            ),
             SizedBox(height: 24),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 32),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 114, 86, 190),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                    Text(
                    'COUNT',
                    style: TextStyle(
                      fontSize: 12,
                      letterSpacing: 1.5,
                      color:  Color.fromARGB(255, 66, 151, 104),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '$count',
                    style: TextStyle(
                      fontSize: 64,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 24, 8, 8),
                    ),
                  ),
                ],
              ),
            ),
             SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () => setState(() => count = count - 1),
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 16),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 253, 190, 200),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.remove, color: Color(0xFFC2185B), size: 20),
                          SizedBox(width: 6),
                          Text(
                            'Minus',
                            style: TextStyle(
                              color: Color.fromARGB(255, 235, 16, 103),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                 SizedBox(width: 12),
                Expanded(
                  child: GestureDetector(
                    onTap: () => setState(() => count = count + 1),
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 16),
                      decoration: BoxDecoration(
                        color:  Color.fromARGB(255, 81, 241, 164),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.add, color: Color.fromARGB(255, 8, 99, 60), size: 20),
                          SizedBox(width: 6),
                          Text(
                            'Plus',
                            style: TextStyle(
                              color: Color.fromARGB(255, 16, 121, 75),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}