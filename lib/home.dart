import 'package:flutter/material.dart';
import 'package:passwordchecker/main.dart';
import 'package:passwordchecker/password_generator.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late String _password;
  double passwordStrength = 0;
  String passwordInfo = "";
  bool suggest = false;
  final TextEditingController _usernamecontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();

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
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              TextField(
                controller: _usernamecontroller,
                decoration: const InputDecoration(
                  label: Text("Username"),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              // ignore: prefer_const_constructors
              TextField(
                controller: _passwordcontroller,
                decoration: const InputDecoration(
                  label: Text("Password"),
                ),
              ),
              Visibility(
                  visible: suggest, child: Text("Suggestion: $passwordText")),

              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () => setState(() {
                        suggest = true;
                        generatePassword(true, true, true, true, 10);
                      }),
                  child: const Text("Generate Password"))
            ],
          ),
        ),
      ),
    );
  }
}
