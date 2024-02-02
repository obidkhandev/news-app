import 'package:flutter/cupertino.dart';
import 'package:news_app/compotations/my_divider.dart';

class MyBigDivider extends StatelessWidget {
  const MyBigDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        MyDivider(),
        Padding(
          padding: EdgeInsets.all(5),
          child: Text(
            "or sign in with",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
        ),
        MyDivider(),
      ],
    );
  }
}
