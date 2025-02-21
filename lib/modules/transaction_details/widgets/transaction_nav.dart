import 'package:Swedbank/core/data.dart';
import 'package:flutter/material.dart';

import '../../../core/style.dart';

class detailsNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 35),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 80),
          Text('Withdrawal',
              style: TextStyle(fontSize: smallFontSize, color: Colors.grey)),
          Text('Transfer by internet',
              style: TextStyle(
                fontSize: medFontSize,
              )),
          const SizedBox(height: 40),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Amount',
                      style: TextStyle(
                          fontSize: smallFontSize, color: Colors.grey)),
                  Text('- ${mydata[0]['amount']}',
                      style: TextStyle(
                        fontSize: medFontSize,
                      )),
                ],
              ),
              const SizedBox(width: 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Accounting date',
                      style: TextStyle(
                          fontSize: smallFontSize, color: Colors.grey)),
                  Text(mydata[0]['date'],
                      style: TextStyle(
                        fontSize: medFontSize,
                      )),
                ],
              )
            ],
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
