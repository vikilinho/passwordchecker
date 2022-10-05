String generatePassword(bool includeLetters, bool includeNumbers,
    bool includeUpperCase, bool includeSpecialChar, double charNum) {
  String lowerCaseLetters = "abcdefghijklmnopqrstuvwxyz";
  String upperCaseLetters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
  String numbers = "0123456789";
  String special = "@#=+!£\$%&?[](){}";
  String _allowedChars = "";

  _allowedChars += (includeLetters ? lowerCaseLetters : '');
}
