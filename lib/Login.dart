import 'package:bag_clone/Appbar.dart';

import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: Appbar(appbarcolor: Colors.blue),
      body: Column(
        children: [TextField()],
      ),
    );
  }
}
