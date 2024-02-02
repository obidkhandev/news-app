import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  const MyTextField({
    super.key,
    required this.controller,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
            hintText: hintText, hintStyle: const TextStyle(color: Colors.grey)),
      ),
    );
  }
}
