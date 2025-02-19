import 'package:flutter/material.dart';

class underText extends StatelessWidget {
  String mytext;
  underText({required this.mytext, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.centerStart,
      margin: const EdgeInsets.fromLTRB(25, 0, 0, 0),
      child: Text(
        mytext,
        style: const TextStyle(
          fontSize: 14,
        ),
      ),
    );
  }
}
