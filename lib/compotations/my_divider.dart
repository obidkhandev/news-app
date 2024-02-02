import 'package:flutter/material.dart';

class MyDivider extends StatelessWidget {
  
  const MyDivider({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: 2,
      width: size.width / 3 - 32,
      color: Colors.black,
    );
  }
}