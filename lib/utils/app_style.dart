import 'package:flutter/material.dart';

Color primary = const Color(0xFF687daf);

class Styles {
  static Color primarayColor = primary;
  static Color textColror = const Color(0xFF3b3b3b);
  static Color bgColros = const Color(0xFFeeedf2);
  static Color orangeColor = const Color(0xfff37b67);
  static Color kakiColor = const Color(0xffd2bdb6);

  static TextStyle textStyle =
      TextStyle(fontSize: 16, color: textColror, fontWeight: FontWeight.w500);
  static TextStyle headlineStyle1 =
      TextStyle(fontSize: 26, color: textColror, fontWeight: FontWeight.bold);
  static TextStyle headlineStyle2 =
      TextStyle(fontSize: 21, color: textColror, fontWeight: FontWeight.bold);
  static TextStyle headlineStyle3 =
      const TextStyle(fontSize: 17, fontWeight: FontWeight.w500);
  static TextStyle headlineStyle4 = TextStyle(
      fontSize: 14, color: Colors.grey.shade500, fontWeight: FontWeight.w500);
}
