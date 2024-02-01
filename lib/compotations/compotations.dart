import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          "assets/i.png",
          width: 70,
          height: 70,
        ),
        RichText(
          text: const TextSpan(
            children: [
            TextSpan(
              text: "News",
              style: TextStyle(color: Colors.blue, fontSize: 32,fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text: "Watch",
              style: TextStyle(color: Colors.black, fontSize: 32,fontWeight: FontWeight.bold),
            ),
          ]),
        )
      ],
    );
  }
}
