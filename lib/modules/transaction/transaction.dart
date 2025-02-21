import 'package:flutter/material.dart';
import 'package:hady/core/style.dart';

import 'widgets/account_info.dart';
import 'widgets/transaction_nav.dart';
import 'widgets/transaction_tab.dart';

class transaction extends StatefulWidget {
  @override
  _transactionState createState() => _transactionState();
}

class _transactionState extends State<transaction>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(250.0),
        child: AppBar(
          leading: const BackButton(),
          backgroundColor: appbarColor,
          title: Text(
            'Foretagskonto',
            style: TextStyle(color: Colors.grey, fontSize: titleFontSize),
          ),
          flexibleSpace: TransactionsNav(),
          bottom: TabBar(
            controller: _tabController,
            indicatorColor: orangeColor,
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: [
              Tab(child: tabname(mytext: 'Transactions')),
              Tab(child: tabname(mytext: 'Account information')),
            ],
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          TransactionsTab(),
          AccountInfoTab(),
        ],
      ),
    );
  }
}

class tabname extends StatelessWidget {
  String mytext;
  tabname({required this.mytext, super.key});

  @override
  Widget build(BuildContext context) {
    return Text(mytext, style: TextStyle(color: Colors.white));
  }
}
