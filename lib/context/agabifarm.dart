import 'package:flutter/material.dart';
class userdata extends ChangeNotifier {
String _username = "Abraham";
int _creditScore = 10;

String get username => _username;
int get creditScore => _creditScore;

void updateUsername(String newUsername){
_username = newUsername;
notifylistteners();
}  
} 