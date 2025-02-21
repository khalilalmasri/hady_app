import 'package:flutter/material.dart';
import 'package:hady/core/widget/second_text.dart';
import 'package:hady/modules/approved/approved.dart';

import '../../../core/style.dart';
import '../../../core/logic/date_and_time.dart';
import '../../transaction_details/transaction_details.dart';

class TransactionsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: ListView(
        children: <Widget>[
          const SizedBox(height: 25),
          Container(
            alignment: AlignmentDirectional.centerStart,
            margin: const EdgeInsets.symmetric(horizontal: 10),
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey,
                  width: 0.2,
                ),
              ),
            ),
            child: Text(
              'Latest transactions',
              style: TextStyle(
                  color: orangeColor,
                  fontSize: medFontSize,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 10),
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
            child: secontextd(mytext: getFormattedDate()),
          ),
          ...List.generate(
              6,
              (index) => InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => transactionDetails()),
                    ),
                    child: cardlist(
                        mytitle: ' ovf via internet 6541-965465',
                        description: 'transfer by internet',
                        mydate: '18-02-2025',
                        total: '-5 000,00'),
                  )),
        ],
      ),
    );
  }
}

class cardlist extends StatelessWidget {
  String mytitle;
  String description;
  String mydate;
  String total;
  cardlist(
      {required this.mytitle,
      required this.description,
      required this.mydate,
      required this.total,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.centerStart,
      padding:
          EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: 10),
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
              Text(mytitle, style: TextStyle(fontSize: medFontSize)),
              secontextd(mytext: description),
              secontextd(mytext: mydate),
            ],
          ),
          Text(total, style: TextStyle(fontSize: medFontSize))
        ],
      ),
    );
  }
}
