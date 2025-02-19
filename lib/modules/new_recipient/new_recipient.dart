import 'package:flutter/material.dart';
import 'package:hady/modules/approved/approved.dart';
import 'package:hady/core/style.dart';
import 'package:hady/core/widget/custom_field.dart';

import '../../core/logic/controllers.dart';
import 'widgets/custom_btn_row.dart';
import 'widgets/under_text.dart';

class new_recipient extends StatefulWidget {
  new_recipient({Key? key}) : super(key: key);

  @override
  _new_recipientState createState() => _new_recipientState();
}

class _new_recipientState extends State<new_recipient> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      if (_counter < 10) {
        _counter++;
      } else {
        _counter = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appbarColor,
        leading: const BackButton(),
        // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('New recipient'),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            alignment: AlignmentDirectional.centerStart,
            margin: const EdgeInsets.fromLTRB(10, 20, 10, 10),
            child: const Text(
              'Type of recipient',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          custombtnRow(
            onTap: _incrementCounter,
          ),
          const SizedBox(
            height: 10,
          ),
          theInput(nameController, 'Recipients name', TextInputType.text),
          underText(mytext: 'Max 35 characters'),
          const SizedBox(height: 20),
          theInput(sortController, 'Sort code and account number',
              TextInputType.number),
          underText(mytext: '11 - 15 digits'),
          const SizedBox(height: 20),
          theInput(finalController, ' ', TextInputType.number),
          const SizedBox(height: 20),
          // underText(mytext: '$_counter'),
          Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: orangeColor),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => approved()),
                );
              },
              //  child: Container(
              //   alignment: AlignmentDirectional.center, //

              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Image.asset(
                      'assets/images/p.png',
                      width: 35,
                      height: 35,
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    'Add recipient',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
