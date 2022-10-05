import 'dart:developer' as logg;
import 'dart:math';

import 'package:passwordchecker/main.dart';

String generatePassword(bool includeLowercase, bool includeNumbers,
    bool includeUpperCase, bool includeSpecialChar, double charNum) {
  String lowerCaseLetters = "abcdefghijklmnopqrstuvwxyz";
  String upperCaseLetters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
  String numbers = "0123456789";
  String specialChars = "@#=+!£\$%&?[](){}";
  String allowedChars = "";

  int i = 0;
  String password = "";

  allowedChars += (includeLowercase ? lowerCaseLetters : '');
  allowedChars += (includeUpperCase ? upperCaseLetters : '');
  allowedChars += (includeSpecialChar ? specialChars : '');
  allowedChars += (includeNumbers ? numbers : '');

  //Create password
  while (i < charNum.round()) {
    //Get random int
    int randomInt = Random.secure().nextInt(allowedChars.length);
    //Get random char and append it to the password
    password += allowedChars[randomInt];
    i++;
  }
  logg.log(passwordText);
  passwordText = password;
  return password;
}
