import 'package:flutter/material.dart';

import '../../../core/data.dart';
import '../../../core/style.dart';
import '../../../core/logic/date_and_time.dart';
import '../../../core/widget/second_text.dart';
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
            margin: EdgeInsets.symmetric(horizontal: horizontalPadding),
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
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => transactionDetails(),
                ),
              );
            },
            child: cardlist(
              mytitle: mydata[0]['name'] + ' ' + mydata[0]['account'],
              description: 'Transfer by internet',
              mydate: mydata[0]['date'],
              total: '- ${mydata[0]['amount']}',
              // mytitle: myAlldata[reversedIndex]['name'],
              // description: myAlldata[reversedIndex]['account'],
              // mydate: myAlldata[reversedIndex]['time'],
              // total: myAlldata[reversedIndex]['amount'].toString(),
            ),
          ),
          ...List.generate(
            myAlldata.length,
            (index) {
              // int reversedIndex = myAlldata.length - 1 - index;
              return InkWell(
                onTap: () {
                  // print('myAlldata[index]: ${myAlldata[index]}');
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => transactionDetails(),
                  //   ),
                  // );
                },
                child: cardlist(
                  mytitle: myAlldata[index]['name'],
                  description: myAlldata[index]['desc'],
                  mydate: myAlldata[index]['date'],
                  total: myAlldata[index]['amount'].toString(),
                  // mytitle: myAlldata[reversedIndex]['name'],
                  // description: myAlldata[reversedIndex]['account'],
                  // mydate: myAlldata[reversedIndex]['time'],
                  // total: myAlldata[reversedIndex]['amount'].toString(),
                ),
              );
            },
          )
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
              Text(mytitle),
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
