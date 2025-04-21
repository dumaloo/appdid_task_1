import 'package:appdid_task/auth/google_sign_in.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Screen"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Firebase auth sign in
            signInWithGoogle();
          },
          child: Text("Sign-in Using Google"),
        ),
      ),
    );
  }
}
