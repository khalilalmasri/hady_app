import 'package:flutter/material.dart';

import '../style.dart';

class secontextd extends StatelessWidget {
  String mytext;
  secontextd({required this.mytext, super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      mytext,
      style: TextStyle(fontSize: smallFontSize, color: Colors.grey),
    );
  }
}
