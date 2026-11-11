import 'package:flutter/material.dart';

class Screen10 extends StatefulWidget {
  const Screen10({super.key});

  @override
  State<Screen10> createState() => _Screen10();
}

class _Screen10 extends State<Screen10> {
  late double screenwidth = MediaQuery.of(context).size.width;
  late double screenheight = MediaQuery.of(context).size.height;

  @override
  Widget build(BuildContext context) {

    final args = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
    final applicantemail = args?['name'] ?? 'No applicant email Passed';
    final applicantNo = args?['age'] ?? 'No applicant phoneNo. Passed';
    final applicantname = args?['age'] ?? 'No applicant name Passed';
    final applicantage = args?['age'] ?? 'No Student Age Passed';
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
              Text('Email: abrahamaisa001@gmail.com, phoneNum: 09061855400, Name: Big Nature, i am 29'),
              ElevatedButton(onPressed: () {
                Navigator.pushNamed(context, '/screen10', arguments : {
                  'Email': applicantemail,
                  'phoneNo.': applicantNo,
                  'Name': applicantname,
                  'Age': applicantage
                });
              }, child: Text('Go to next screen'))
            ],
          ),
        ),
      ),
    );
  }
}
