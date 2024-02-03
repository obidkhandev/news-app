 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(
          Icons.arrow_back_ios_new_rounded,
          size: 18,
        ),
      ),
      actions: const [
        Icon(Icons.bookmark_border_rounded),
        SizedBox(width: 15),
        Icon(CupertinoIcons.share_up),
        SizedBox(width: 15),
      ],
    );
  }