import 'package:intl/intl.dart';

String getFormattedDate() {
  final now = DateTime.now();
  final month = _getMonthName(now.month);
  final year = now.year.toString();
  return '$month $year';
}

String _getMonthName(int month) {
  const months = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December'
  ];
  return months[month - 1];
}

String getCurrentDate() {
  DateTime now = DateTime.now() ;
  DateFormat formatter = DateFormat('yyyy-MM-dd');
  String formattedDate = formatter.format(now);
  return formattedDate;
}
String getDateMinusDays(int days) {
  DateTime now = DateTime.now();
  DateTime targetDate = now.subtract(Duration(days: days));
  DateFormat formatter = DateFormat('yyyy-MM-dd');
  String formattedDate = formatter.format(targetDate);
  return formattedDate;
}

String getCurrentTime() {
  DateTime now = DateTime.now();
  DateFormat formatter = DateFormat('HH:mm');
  String formattedTime = formatter.format(now);
  return formattedTime;
}

int getCurrentTimeInSeconds() {
  DateTime now = DateTime.now();
  int secondsSinceMidnight = now.second + now.minute * 60 + now.hour * 3600;
  return secondsSinceMidnight;
}
