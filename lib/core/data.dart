import 'logic/date_and_time.dart';

List mydata = [
  {
    'name': '',
    'account': '',
    'desc': 'Transfer by internet',
    'amount': 0,
    'date': '',
    'time': '',
    // 'id': '',
  }
];
List myAlldata = [
  // {
  //   'name': 'Övf via internet 8156-944 431 692-2',
  //   'account': '',
  //   'amount': '-5 000.00',
  //   'date': getCurrentDate(),
  //   'time': '15:30',
  // },
  {
    'name': 'Övf via internet 8156-788 462 557-7',
    'desc': 'Transfer by internet',
    'amount': '11 000.00',
    // 'date': '',
    'date': getDateMinusDays(2),
    'time': '18:22',
  },
  {
    'name': 'Swish mottagem +467233256412',
    'desc': 'Swish payment ',
    'amount': '6 200.00',
    // 'date': 'getDateMinusDays(5)',
    'date': getDateMinusDays(5),
    'time': '20:08',
  },
  {
    'name': 'Övf via internet 8156-884 481 112-2',
    'desc': 'Bank giro payment by internet',
    'amount': '-1 250.00',
    // 'date': 'getDateMinusDays(7)',
    'date': getDateMinusDays(7),
    'time': '11:30',
  },
  {
    'name': 'HI3G ACCESS',
    'desc': 'Bank giro payment by internet',
    'amount': '-749.00',
    // 'date': 'getDateMinusDays(10)',
    'date': getDateMinusDays(10),
    'time': '16:45',
  },
];
fillMydata(name, account, amount, date, time) {
  mydata[0]['name'] = name;
  mydata[0]['account'] = account;
  mydata[0]['amount'] = amount;
  mydata[0]['date'] = date;
  mydata[0]['time'] = time;
  // mydata[0]['id'] = id.toString();
  // print('mydata......................: $mydata');
}

// selectMydate(data) {
//   mydata.clear();
//   // print('data...............before.......: $data');
//   mydata.add(data);
//   // print('data...............after.......: $data');
// }

// fillMyalldata(name, account, amount, date, time) {
//   myAlldata.add({
//     'name': name,
//     'account': account,
//     'amount': amount,
//     'date': date,
//     'time': time,
//     // 'id': id.toString(),
//   });

  // print('myalldata......................: $myAlldata');
// }
