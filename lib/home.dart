import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late String _password;
  double passwordStrength = 0;
  String passwordInfo = "";

  RegExp numReg = RegExp(r".*[0-9].*");
  RegExp letterReg = RegExp(r".*[A-Za-z].*");

  void checkPassword(String? password) {
    _password = password.toString().trim();
    if (_password.length == 0) {
      passwordInfo = "Please enter a password.";
      passwordStrength = 1;
    } else if (_password.length < 6) {
      passwordInfo = "Your password is too short";
      passwordStrength = 6;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                label: const Text("Username"),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                label: const Text("Password"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
