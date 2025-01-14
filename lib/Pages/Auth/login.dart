import 'package:flutter/material.dart';
import 'package:my_app/reusable/bottomNavBar.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Simulate successful login
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const Homebottomnav()),
            );
          },
          child: const Text('Login'),
        ),
      ), );
  }
}