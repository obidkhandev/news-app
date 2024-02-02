import 'package:flutter/material.dart';
import 'package:news_app/pages/sign_up.dart';
import 'package:news_app/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       scaffoldBackgroundColor: Colors.white,
        useMaterial3: true,
      ),
      home: SignUpPage(),
    );
  }
}

