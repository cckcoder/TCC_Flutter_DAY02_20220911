import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var _keyForm = GlobalKey<FormState>();
  String username = '';
  String password = '';

  submit() {
    if (_keyForm.currentState!.validate()) {
      _keyForm.currentState!.save();
    }
  }

  regis() {
    Navigator.pushNamed(context, '/register');
  }

  String? validateString(String? value) {
    if (value == null || value == '') {
      return 'กรุณากรอกข้อมูล';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: _keyForm,
          child: ListView(
            children: [
              Column(
                children: [
                  ListTile(
                    title: TextFormField(
                      validator: validateString,
                      onSaved: (String? value) {
                        username = value!;
                      },
                      decoration: InputDecoration(
                        labelText: 'Username',
                        hintText: 'Username',
                      ),
                    ),
                  ),
                  ListTile(
                    title: TextFormField(
                      validator: validateString,
                      onSaved: (String? value) {
                        password = value!;
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        hintText: 'Password',
                      ),
                    ),
                  ),
                  ListTile(
                    title: ElevatedButton(
                      onPressed: submit,
                      child: Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    title: ElevatedButton(
                      onPressed: regis,
                      child: Text(
                        'Register',
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
