import 'package:flutter/material.dart';
import '../../../core/style.dart';

class TransactionsNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 35),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 80),
          Text('Available amount',
              style: TextStyle(fontSize: smallFontSize, color: Colors.grey)),
          Text('76 280,07 SEK',
              style: TextStyle(
                fontSize: medFontSize,
              )),
          const SizedBox(height: 40),
          Text('Clearing and account number',
              style: TextStyle(fontSize: smallFontSize, color: Colors.grey)),
          Text('8156-2, 744 421 691-1',
              style: TextStyle(
                fontSize: medFontSize,
              )),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
