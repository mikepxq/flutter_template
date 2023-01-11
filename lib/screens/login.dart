import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('login')),
      body: Center(
        child: ElevatedButton(
          child: const Text('back'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
