String generatePassword(bool includeLowercase, bool includeNumbers,
    bool includeUpperCase, bool includeSpecialChar, double charNum) {
  String lowerCaseLetters = "abcdefghijklmnopqrstuvwxyz";
  String upperCaseLetters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
  String numbers = "0123456789";
  String specialChars = "@#=+!£\$%&?[](){}";
  String _allowedChars = "";

  _allowedChars += (includeLowercase ? lowerCaseLetters : '');
  _allowedChars += (includeUpperCase ? upperCaseLetters : '');
  _allowedChars += (includeSpecialChar ? specialChars : '');
  _allowedChars += (includeNumbers ? numbers : '');

  return '';
}
