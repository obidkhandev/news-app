import 'package:flutter/material.dart';

class MySocialMedia extends StatelessWidget {
  final Widget child;
  const MySocialMedia({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        width: 50,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.transparent,
          border: Border.all(width: 2, color: Colors.black),
        ),
        child: child);
  }
}
