import 'package:flutter/material.dart';
import 'package:hady/core/style.dart';

import '../approved/approved.dart';
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
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'Details',
              style: TextStyle(
                  color: orangeColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
          detaillist(mytitle: 'Transaction date', description: '2025-02-18'),
          detaillist(mytitle: 'Value date', description: '2025-02-18'),
          detaillist(mytitle: 'Recipient', description: '8156-944 431 692-2'),
          detaillist(mytitle: 'Bank reference', description: '8689996907533'),
          detaillist(mytitle: 'Time', description: '20:05'),
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
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(mytitle, style: TextStyle(fontSize: 18)),
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
