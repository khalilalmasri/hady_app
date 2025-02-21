import 'package:flutter/material.dart';
import 'package:hady/core/style.dart';

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
          Text('withdrawal',
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
                  Text('amount',
                      style: TextStyle(
                          fontSize: smallFontSize, color: Colors.grey)),
                  Text('-5 000,00',
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
                  Text('2025-02-18',
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
