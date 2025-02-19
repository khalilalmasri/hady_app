import 'package:flutter/material.dart';

class secontextd extends StatelessWidget {
  String mytext;
  secontextd({required this.mytext, super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      mytext,
      style: const TextStyle(fontSize: 14, color: Colors.grey),
    );
  }
}
