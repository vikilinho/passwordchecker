import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:passwordchecker/homebase.dart';

var passwordText = "password";
// create the provider you want to use
final passwordProvider = Provider<String>((ref) => 'pass');
void main() {
  runApp(const ProviderScope(child: MyApp())); //wrap with provider scope
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomeBase());
  }
}
