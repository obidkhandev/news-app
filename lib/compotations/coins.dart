import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Coins extends StatelessWidget {
  const Coins({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 60,
      // alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            CupertinoIcons.money_dollar_circle_fill,
            color: Colors.amber,
          ),
          Text(
            "599",
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
