import 'package:flutter/material.dart';
import 'package:hady/modules/new_recipient/new_recipient.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Dark Theme Demo',
        theme: ThemeData(
          fontFamily: 'SamsungSans',
          brightness: Brightness.dark,
        ),
        home: new_recipient());
  }
}
