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
