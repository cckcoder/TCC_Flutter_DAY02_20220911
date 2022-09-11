import 'package:day02/pages/login.dart';
import 'package:day02/pages/registor.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/register': (context) => const RegistorScreen(),
      },
      home: FutureBuilder(
        builder: (context, snapshot) {
          return LoginScreen();
        },
      ),
    );
  }
}
