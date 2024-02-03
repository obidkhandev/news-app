import 'package:flutter/material.dart';

class MyImages extends StatelessWidget {
  final double borderBottom;
  final String image;
  const MyImages({
    super.key,
    this.borderBottom = 10,
    this.image = "assets/i2.png"
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 170,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(borderBottom),
          bottomRight: Radius.circular(borderBottom),
          topLeft: const Radius.circular(10),
          topRight: const Radius.circular(10),
        ),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(image),
        ),
      ),
    );
  }
}
