import 'package:flutter/cupertino.dart';
import 'package:news_app/compotations/my_divider.dart';

class MyBigDivider extends StatelessWidget {
  final double dividerWith;
  const MyBigDivider({
    super.key,
    this.dividerWith = 32,
  });

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        MyDivider(width: dividerWith,),
        const Padding(
          padding: EdgeInsets.all(5),
          child: Text(
            "or sign in with",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
        ),
        MyDivider(width: dividerWith,),
      ],
    );
  }
}
