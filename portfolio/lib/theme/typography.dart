library;

import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/theme/colors.dart';

abstract class AppTextStyle {
  static const String? _fontPackage = null;

  static TextStyle componentsBadge = GoogleFonts.lexendMega(
    fontSize: 8,
    height: 1.5,
    fontWeight: FontWeight.w400,
    color: AppColors.black,
  );

  static TextStyle componentsMonogram = GoogleFonts.lexendMega(
    fontSize: 12,
    height: 1.5,
    fontWeight: FontWeight.w400,
    color: AppColors.black,
  );

  static TextStyle contentSmallContent = GoogleFonts.publicSans(
    fontSize: 14,
    height: 1.5,
    fontWeight: FontWeight.w500,
    color: AppColors.black,
  );

  static TextStyle contentSmall2Content = GoogleFonts.lexendMega(
    fontSize: 10,
    height: 1.5,
    fontWeight: FontWeight.w400,
    color: AppColors.black,
  );

  static TextStyle titleLargeTitle = GoogleFonts.archivo(
    fontSize: 64,
    height: 1.5,
    fontWeight: FontWeight.w700,
    color: AppColors.black,
  );

  static TextStyle titleMediumTitle = GoogleFonts.archivo(
    fontSize: 32,
    height: 1.5,
    fontWeight: FontWeight.w700,
    color: AppColors.black,
  );

  static TextStyle titleSmallMediumTitle = GoogleFonts.archivo(
    fontSize: 24,
    height: 1.5,
    fontWeight: FontWeight.w700,
    color: AppColors.black,
  );

  static TextStyle titleSmallTitle = GoogleFonts.archivo(
    fontSize: 16,
    height: 1.5,
    fontWeight: FontWeight.w700,
    color: AppColors.black,
  );

  static TextStyle titleSmallSubtitle = GoogleFonts.archivo(
    fontSize: 12,
    height: 1.5,
    fontWeight: FontWeight.w400,
    color: AppColors.black,
  );
}
