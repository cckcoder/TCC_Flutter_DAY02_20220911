import 'package:flutter/material.dart';

class RegistorScreen extends StatefulWidget {
  const RegistorScreen({Key? key}) : super(key: key);

  @override
  State<RegistorScreen> createState() => _RegistorScreenState();
}

class _RegistorScreenState extends State<RegistorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              ListTile(
                title: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Username',
                    labelText: 'Username',
                  ),
                ),
              ),
              ListTile(
                title: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Password',
                    labelText: 'Password',
                  ),
                ),
              ),
              ListTile(
                title: ElevatedButton(
                  onPressed: () {},
                  child: Text('Register'),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
