import 'package:flutter/material.dart';

class MyDivider extends StatelessWidget {
  final double width;
  const MyDivider({super.key, required this.width});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: 2,
      width: size.width / 3 - width,
      color: Colors.black,
    );
  }
}
