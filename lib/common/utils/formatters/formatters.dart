import 'package:fixithub/app/app_constants.dart';
import 'package:intl/intl.dart';

class Formatters {

 static String formatDate({
    required String dateToFormat,
    String pattern = AppConstants.dateFormatPattern,
  }) {
    try {
      final DateTime date = DateTime.parse(dateToFormat);
      return DateFormat(pattern).format(date);
    } catch (_) {
      return dateToFormat; 
    }
  }

  static String formatCurrency({
    required num amount,
    String locale = AppConstants.localCurrency,
    String symbol = AppConstants.localCurrencySymbol,
  }) {
    final formatter = NumberFormat.currency(
      locale: locale,
      symbol: symbol,
    );
    return formatter.format(amount);
  }
}