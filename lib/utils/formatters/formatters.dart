import 'package:intl/intl.dart';

class TFormatter {
  /// Formats a [DateTime] object into `dd-MMM-yyyy` (e.g., 29-May-2025)
  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat("dd-MMM-yyyy").format(date);
  }

  /// Formats a number into Indian currency (e.g., ₹1,00,000.00)
  static String formatCurrency(double amount) {
    return NumberFormat.currency(locale: "en_IN", symbol: "₹").format(amount);
  }

  /// Formats a 10-digit or 11-digit Indian phone number
  static String formatPhoneNumber(String phoneNumber) {
    final digits = phoneNumber.replaceAll(RegExp(r'\D'), '');

    if (digits.length == 10) {
      return "${digits.substring(0, 5)} ${digits.substring(5)}";
    } else if (digits.length == 11 && digits.startsWith('0')) {
      return "${digits.substring(1, 6)} ${digits.substring(6)}";
    } else {
      return phoneNumber;
    }
  }

  /// Formats Indian mobile number in international format (+91 XXXXX YYYYY)
  static String internationalFormatPhoneNumber(String phoneNumber) {
    String digitsOnly = phoneNumber.replaceAll(RegExp(r'\D'), '');

    if (digitsOnly.startsWith('91') && digitsOnly.length == 12) {
      digitsOnly = digitsOnly.substring(2);
    } else if (digitsOnly.startsWith('0') && digitsOnly.length == 11) {
      digitsOnly = digitsOnly.substring(1);
    }

    if (digitsOnly.length == 10) {
      return "+91 ${digitsOnly.substring(0, 5)} ${digitsOnly.substring(5)}";
    }

    return phoneNumber;
  }
}
