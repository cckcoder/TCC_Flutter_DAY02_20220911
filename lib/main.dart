import 'package:day02/pages/addform.dart';
import 'package:day02/pages/editform.dart';
import 'package:day02/pages/home.dart';
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
        '/home': (context) => const HomeScreen(),
        '/register': (context) => const RegistorScreen(),
        '/addForm': (context) => const AddForm(),
        '/editForm': (context) => const EditForm()
      },
      home: FutureBuilder(
        builder: (context, snapshot) {
          return LoginScreen();
        },
      ),
    );
  }
}
