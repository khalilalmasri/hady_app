// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import '../../core/data.dart';
import '../../core/style.dart';
import '../../core/widget/second_text.dart';
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
                    width: 90,
                    height: 90,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Approved!',
                    style: TextStyle(
                        color: orangeColor,
                        fontSize: titleFontSize,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 25),
          Container(
            alignment: AlignmentDirectional.centerStart,
            margin: EdgeInsets.symmetric(horizontal: horizontalPadding),
            child: Text(
              'Payment/transfers',
              style: TextStyle(
                  color: orangeColor,
                  fontSize: medFontSize,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 30),
          Container(
            alignment: AlignmentDirectional.centerStart,
            padding: EdgeInsets.symmetric(
                horizontal: horizontalPadding, vertical: 10),
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey,
                  width: 0.2,
                ),
              ),
            ),
            child: secontextd(mytext: 'Företagskonto, 8156-744 421 691-1'),
          ),
          Container(
            alignment: AlignmentDirectional.centerStart,
            padding: EdgeInsets.symmetric(
                horizontal: horizontalPadding, vertical: 10),
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
                    Text('${mydata[0]?['name']}',
                        style: TextStyle(fontSize: medFontSize)),
                    // secontextd(mytext: ' 8156-2,944 431692-2'),
                    secontextd(
                      mytext: '${mydata[0]?['account']}',
                    ),
                    secontextd(mytext: 'Promptly'),
                  ],
                ),
                // const Text('5000,00')
                Text('- ${mydata[0]?['amount']}',
                    style: TextStyle(fontSize: medFontSize))
              ],
            ),
          ),
          Container(
            alignment: AlignmentDirectional.centerStart,
            padding: EdgeInsets.symmetric(
                horizontal: horizontalPadding, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                secontextd(mytext: 'Total aproved'),
                Text('- ${mydata[0]?['amount']},00',
                    style: TextStyle(fontSize: medFontSize))
              ],
            ),
          ),
          const SizedBox(height: 230),
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
                child: Text(
                  'Done',
                  style: TextStyle(
                      fontSize: medFontSize,
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

