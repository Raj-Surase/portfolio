import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static const Color primaryColor = Color(0xFF252424);
  static const Color accentColor = Color(0xFF9AA9E6);
  static const Color backgroundColor = Color(0xFF252424);

  static TextStyle get headline1 => GoogleFonts.montserrat(
        fontSize: 36,
        fontWeight: FontWeight.w900,
        color: Color(0xFF9AA9E6),
      );

  static TextStyle get headline2 => GoogleFonts.montserrat(
        fontSize: 28,
        fontWeight: FontWeight.w700,
        color: Color(0xFFDDDEE4),
      );

  static TextStyle get headline3 => GoogleFonts.montserrat(
        fontSize: 24,
        fontWeight: FontWeight.w400,
        color: Color(0xFFDDDEE4),
      );

  static TextStyle get bodyText1 => GoogleFonts.montserrat(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: Color(0xFFDDDEE4),
      );

  static bool isLargeScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > 600;
  }

  static double screenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double screenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }
}
