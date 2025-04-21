import 'package:appdid_task/auth/google_sign_in.dart';
import 'package:appdid_task/categories/categories_list_screen.dart';
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
          onPressed: () async {
            try {
              final userCredential = await signInWithGoogle();

              if (userCredential.user != null && context.mounted) {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const CategoriesListScreen(),
                  ),
                );
              }
            } catch (e) {
              if (context.mounted) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Login failed: ${e.toString()}")),
                );
              }
            }
          },
          child: Text("Sign-in Using Google"),
        ),
      ),
    );
  }
}
