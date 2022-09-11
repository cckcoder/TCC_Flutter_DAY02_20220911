import 'package:flutter/material.dart';

class RegistorScreen extends StatefulWidget {
  const RegistorScreen({Key? key}) : super(key: key);

  @override
  State<RegistorScreen> createState() => _RegistorScreenState();
}

class _RegistorScreenState extends State<RegistorScreen> {
  var _key = GlobalKey<FormState>();
  String username = '';
  String password = '';

  String? validateString(String? value) {
    if (value == null || value == '') {
      return 'กรุณากรอกให้ครบ';
    }
    return null;
  }

  submit() {
    if (_key.currentState!.validate()) {
      _key.currentState!.save();
      print('User = ${username} password = ${password}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
      ),
      body: Form(
        key: _key,
        child: ListView(
          children: [
            Column(
              children: [
                ListTile(
                  title: TextFormField(
                    onSaved: (String? value) {
                      username = value!;
                    },
                    validator: validateString,
                    decoration: InputDecoration(
                      hintText: 'Username',
                      labelText: 'Username',
                    ),
                  ),
                ),
                ListTile(
                  title: TextFormField(
                    onSaved: (String? value) {
                      password = value!;
                    },
                    validator: validateString,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      labelText: 'Password',
                    ),
                  ),
                ),
                ListTile(
                  title: ElevatedButton(
                    onPressed: submit,
                    child: Text('Register'),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
