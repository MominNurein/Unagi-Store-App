import 'package:intl/intl.dart';

class Formatter {
  static String currecyFormat(double amount) {
    final currencyFormatter = NumberFormat("#,##0.00");
    return currencyFormatter.format(amount);
  }
}
