import 'package:flutter/material.dart';
import '../../core/data.dart';
import '../../core/style.dart';
import 'widgets/transaction_nav.dart';

class transactionDetails extends StatefulWidget {
  transactionDetails({Key? key}) : super(key: key);

  @override
  _transactionDetailsState createState() => _transactionDetailsState();
}

class _transactionDetailsState extends State<transactionDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(250.0),
        child: AppBar(
          leading: const BackButton(),
          backgroundColor: appbarColor,
          title: const Text(
            'Transaction details',
            style: TextStyle(color: Colors.grey),
          ),
          flexibleSpace: detailsNav(),
        ),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          const SizedBox(height: 30),
          Container(
            alignment: AlignmentDirectional.centerStart,
            margin: EdgeInsets.symmetric(horizontal: horizontalPadding),
            child: Text(
              'Details',
              style: TextStyle(
                  color: orangeColor,
                  fontSize: medFontSize,
                  fontWeight: FontWeight.bold),
            ),
          ),
          detaillist(
              mytitle: 'Transaction date', description: mydata[0]['date']),
          detaillist(mytitle: 'Value date', description: mydata[0]['date']),
          detaillist(mytitle: 'Recipient', description: mydata[0]['account']),
          detaillist(mytitle: 'Bank reference', description: '8689996907533'),
          detaillist(mytitle: 'Time', description: mydata[0]['time']),
          // detaillist(mytitle: 'Time', description: mydata[0]['id'].toString()),
          // detaillist(mytitle: 'Transaction date', description: '2025-02-18'),
          // detaillist(mytitle: 'Value date', description: '2025-02-18'),
          // detaillist(mytitle: 'Recipient', description: '8156-944 431 692-2'),
          // detaillist(mytitle: 'Bank reference', description: '8689996907533'),
          // detaillist(mytitle: 'Time', description: '20:05'),
          // detaillist(mytitle: 'Time', description: '20:05'),
        ],
      ),
    );
  }
}

class detaillist extends StatelessWidget {
  String mytitle;
  String description;

  detaillist({required this.mytitle, required this.description, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.centerStart,
      padding:
          EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(mytitle, style: TextStyle(fontSize: medFontSize)),
              const SizedBox(height: 5),
              Text(description,
                  style: const TextStyle(fontSize: 16, color: Colors.grey)),
              const SizedBox(height: 10),
              // secontextd(mytext: description),
            ],
          ),
        ],
      ),
    );
  }
}
