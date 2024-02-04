import 'package:flutter/material.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(12),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage("assets/profile.png"),
          ),
          SizedBox(width: 10),
          Text(
            "By Andy Corbley",
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
          Spacer(),
          Text(
            "1hr ago",
            style: TextStyle(
              color: Colors.grey,
            ),
          )
        ],
      ),
    );
  }
}

