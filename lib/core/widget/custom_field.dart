import 'package:flutter/material.dart';

import '../style.dart';

final TextEditingController theController = TextEditingController();
late String theHint;
bool enabled = true;

Widget theInput(
  TextEditingController theController,
  String theHint,
  TextInputType keyboardType,
  // bool enabled,
) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
    // padding: const EdgeInsets.symmetric(vertical: 10),
    height: 50,
    decoration: BoxDecoration(
      color: appbarColor,
    ),
    child: TextField(
        controller: theController,
        decoration: InputDecoration(
          hintText: theHint,
          hintStyle: const TextStyle(
            color: Colors.white70,
          ),
          // contentPadding: const EdgeInsets.all(10),
          fillColor: appbarColor,
          filled: true,
          border: InputBorder.none,
          // border: const OutlineInputBorder(),
        ),
        minLines: 1,
        maxLines: 5,
        keyboardType: keyboardType,
        enabled: enabled),
  );
}
