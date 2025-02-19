// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:hady/core/style.dart';
import 'package:hady/core/widget/second_text.dart';

import '../transaction/transaction.dart';

class approved extends StatefulWidget {
  approved({Key? key}) : super(key: key);

  @override
  _approvedState createState() => _approvedState();
}

class _approvedState extends State<approved> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            height: 250,
            decoration: BoxDecoration(
              color: appbarColor,
            ),
            alignment: AlignmentDirectional.centerStart,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/app.png',
                    width: 80,
                    height: 80,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Text(
                    'Approved!',
                    style: TextStyle(
                        color: orangeColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 25),
          Container(
            alignment: AlignmentDirectional.centerStart,
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'Payment/transfers',
              style: TextStyle(
                  color: orangeColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 30),
          Container(
            alignment: AlignmentDirectional.centerStart,
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey,
                  width: 0.2,
                ),
              ),
            ),
            child: secontextd(mytext: 'Foretagskonto, 8156-744 421 691-1'),
          ),
          Container(
            alignment: AlignmentDirectional.centerStart,
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey,
                  width: 0.2,
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Hady Shkeer', style: TextStyle(fontSize: 18)),
                    secontextd(mytext: ' 8156-2,944 431692-2'),
                    secontextd(mytext: ' Promptly'),
                  ],
                ),
                const Text('5000,00')
              ],
            ),
          ),
          Container(
            alignment: AlignmentDirectional.centerStart,
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                secontextd(mytext: ' total aproved'),
                const Text('5000,00', style: TextStyle(fontSize: 18))
              ],
            ),
          ),
          const SizedBox(height: 280),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: orangeColor),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => transaction()),
                );
              },
              child: Container(
                alignment: AlignmentDirectional.center, //
                child: const Text(
                  'Done',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                // ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable

