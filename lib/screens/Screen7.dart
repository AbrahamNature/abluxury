import 'package:flutter/material.dart';
import 'package:abluxury/screens/Screen8.dart';

class Expense {
  final String title;
  final String subtitle;
  final String amount;
  final bool isIncome;
  final IconData icon;
  final Color iconBgColor;

  Expense({
    required this.title,
    required this.subtitle,
    required this.amount,
    this.isIncome = false,
    required this.icon,
    required this.iconBgColor,
  });
}

class ExpenseRow extends StatelessWidget {
  final Expense item;
  ExpenseRow({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 6.0), 
      padding: EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: item.iconBgColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(
              item.icon,
              color: Colors.white,
              size: 23,
            ),
          ),
           SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.title,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 18, 101, 224),
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  item.subtitle,
                  style: TextStyle(
                    fontSize: 11,
                    color:  Color.fromARGB(255, 5, 1, 1),
                    
                  ),
                ),
              ],
            ),
          ),
          Text(
            item.amount,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: item.isIncome
                ? Color.fromARGB(255, 52, 146, 56)
               :  Color.fromARGB(255, 32, 48, 73),
            ),
          ),
          SizedBox (width: 15),
        IconButton(
          icon: Icon(
            Icons.arrow_forward_ios_rounded,
            size: 15,
            color: Colors.red,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Screen8())
            );
          },
        )
        ],
      ),
    );
  }
}

class Screen7 extends StatelessWidget {
  const Screen7({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Expense> expenses = [
      Expense(
        title: 'Groceries',
        subtitle: 'Jan 31 • Sup...',
        amount: '-\$89.0',
        icon: Icons.shopping_cart_outlined,
        iconBgColor: Color.fromARGB(255, 119, 230, 202),
      ),
      Expense(
        title: 'Restaurant',
        subtitle: 'jan 1st • Din...',
        amount: '-\$52.01',
        icon: Icons.restaurant_outlined,
        iconBgColor:  Color.fromARGB(255, 116, 178, 250),
      ),
      Expense(
        title: 'Coffee',
        subtitle: 'Jan 01 • Morni...',
        amount: '-\$2.10',
        icon: Icons.local_cafe_outlined,
        iconBgColor:  Color.fromARGB(255, 247, 160, 84),
      ),
      Expense(
        title: 'Subscription',
        subtitle: 'Feb 02• Strea...',
        amount: '-\$9.99',
        icon: Icons.subscriptions_outlined,
        iconBgColor: Color(0xFFE5B94E),
      ),
      Expense(
        title: 'Refund',
        subtitle: 'Jan 25 • Stora...',
        amount: '+\$500.00',
        isIncome: true,
        icon: Icons.replay,
        iconBgColor:  Color.fromARGB(255, 236, 26, 26),
      ),
    ];

    return Scaffold(
      backgroundColor:  Color.fromARGB(255, 252, 197, 235),
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: _buildStatCard(
                      title: 'INCOME',
                      amount: '\$8420',
                      icon: Icons.attach_money,
                      iconColor:  Color.fromARGB(255, 50, 145, 235),
                    ),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: _buildStatCard(
                      title: 'SPENT',
                      amount: '\$208',
                      icon: Icons.trending_down,
                      iconColor:  Color.fromARGB(255, 16, 235, 133),
                    ),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: _buildStatCard(
                      title: 'Loan',
                      amount: '\$900',
                      icon: Icons.trending_down,
                      iconColor:  Color.fromARGB(255, 245, 11, 11),
                    ),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: _buildStatCard(
                      title: 'BALANCE',
                      amount: '\$1524',
                      icon: Icons.account_balance_wallet_outlined,
                      iconColor:  Color.fromARGB(255, 209, 88, 153),
                    ),
                  ),
                ],
              ),
               SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recent Expenses',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 1, 1, 2),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color:  Color.fromARGB(255, 252, 116, 218).withOpacity(0.6),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      '${expenses.length} items',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 252, 225, 243),
                      ),
                    ),
                  ),
                ],
              ),
             SizedBox(height: 10),
              Expanded(
                child: ListView.builder(
                  itemCount: expenses.length,
                  itemBuilder: (context, i) => ExpenseRow(item: expenses[i]),
                 
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget _buildStatCard({
    required String title,
    required String amount,
    required IconData icon,
    required Color iconColor,
  }) {
    return Container(
      padding:  EdgeInsets.symmetric(vertical: 14, horizontal: 8),
      decoration: BoxDecoration(
        color:  Color.fromARGB(255, 247, 244, 244).withOpacity(0.5),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: iconColor.withOpacity(0.2),
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: iconColor, size: 18),
          ),
           SizedBox(height: 15),
          Text(
            amount,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color(0xFF1E293B),
            ),
          ),
           SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.5,
              color: Color.fromARGB(255, 106, 126, 153),
            ),
          ),
        ],
      ),
    );
  }
}
