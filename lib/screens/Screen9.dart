import 'package:flutter/material.dart';

class Screen9 extends StatefulWidget {
  const Screen9({super.key});

  @override
  State<Screen9> createState() => _Screen9();
}

class _Screen9 extends State<Screen9> {
  late double screenwidth = MediaQuery.of(context).size.width;
  late double screenheight = MediaQuery.of(context).size.height;
  late TextEditingController applicantemail = TextEditingController();
  late TextEditingController applicantphonenumber = TextEditingController();
  late TextEditingController applicantname = TextEditingController();
  late TextEditingController applicantage = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
              TextField(
                controller: applicantemail,
                decoration: InputDecoration(
                  labelText: 'Enter Applicant email',
                  border: OutlineInputBorder()
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: applicantphonenumber,
                decoration: InputDecoration(
                  labelText: 'Enter aplicant Phonenumber',
                  border: OutlineInputBorder()
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: applicantname,
                decoration: InputDecoration(
                  labelText: 'Enter applicant Name',
                  border: OutlineInputBorder()
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: applicantage,
                decoration: InputDecoration(
                  labelText: 'Enter applicant Age',
                  border: OutlineInputBorder()
                ),
              ),

              ElevatedButton(onPressed: () {
                Navigator.pushNamed(context, '/screen10', arguments : {
                  'Email': applicantemail.text,
                  'PhoneNO.': applicantphonenumber.text,
                  'Name': applicantname.text,
                  'Age': applicantage.text,
                });
              }, child: Text('Go to next screen'))
            ],
          ),
        ),
      ),
    );
  }
}
