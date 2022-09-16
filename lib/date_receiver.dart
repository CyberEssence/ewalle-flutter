import 'package:intl/intl.dart';

main() {
  final DateTime now = DateTime.now();
  final DateFormat formatter = DateFormat('MMM.dd.yyyy|EEEE');
  final String formatted = formatter.format(now);
  final DateFormat timeFormatter = DateFormat('hh:mm aa');
  final String timeFormatted = timeFormatter.format(now);
  print(formatted); // something like 2013-04-20
  print(timeFormatted);
}