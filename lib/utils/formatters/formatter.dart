import 'package:intl/intl.dart';


class ANBFormatter{
  static String formatDate(DateTime ? date){
    date ??= DateTime.now();
    return DateFormat("dd-MMM-yyyy").format(date);// Customize the data format as needed
  }

  static String formatCurrency(double amount){
    return NumberFormat.currency(locale: "en_US", symbol: "\$").format(amount);
  }

  static String formatPhoneNumber(String phoneNumber){
    // Assuming a 10-digit us phone number format: (123) 456-7890
    if(phoneNumber.length == 10){
      return"(${phoneNumber.substring(0, 3)}) ${phoneNumber.substring(3, 6)} ${phoneNumber.substring(6)}";
    }else if(phoneNumber.length == 11){
      return "(${phoneNumber.substring(0, 4)}) ${phoneNumber.substring(4, 7)} ${phoneNumber.substring(7)}";
    }

    // Add more custom phone number formatting logic for different formats if needed
    return phoneNumber;
  }

  // Not fully tested
  static String internationalFormatPhoneNumber(String phoneNumber){
    // Remove any non-digit characters from the phone number
    var digitOnly = phoneNumber.replaceAll(RegExp(r"\D"), "");

    // Extract the country code from the digitOnly
    String countryCode = "+${digitOnly.substring(0, 2)}";
    digitOnly = digitOnly.substring(2);

    // Add the remaining digits with proper formatting
    final formattedNumber = StringBuffer();
    formattedNumber.write("($countryCode)");

    int i = 0;
    while(i < digitOnly.length){
      int groupLength =  2;
      if(i == 0 && countryCode=="+1"){
        groupLength = 3;
      }

      int end = i + groupLength;
      formattedNumber.write(digitOnly.substring(i, end));
      if(end < digitOnly.length){
        formattedNumber.write(" ");
      }
      i = end;
    }
    return formattedNumber.toString();
  }

  /// Concatenate phone number and country code
  static String formatPhoneNumberWithCountryCode(String countryCode, String phoneNumber){
    // Remove leading zero if present
    // if(phoneNumber.startsWith("0")){
    //   phoneNumber = phoneNumber.substring(1);
    // }
    // Combine country code and phone number
    return "$countryCode $phoneNumber";
  }
}