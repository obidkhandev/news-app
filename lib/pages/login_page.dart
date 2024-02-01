import 'package:flutter/material.dart';
import 'package:news_app/compotations/compotations.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(right: 20,left: 20,top: 50),
        child: Column(
          children: [
            AppLogo(),
            
          ],
        ),
      ),
    );
  }
}