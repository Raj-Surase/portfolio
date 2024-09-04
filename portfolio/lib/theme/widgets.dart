import 'package:flutter/material.dart';
import 'package:portfolio/theme/colors.dart';

abstract class WidgetConstants {
  static const BoxShadow shadowEffect = BoxShadow(
    color: AppColors.black,
    offset: Offset(4, 6),
    blurRadius: 0,
    spreadRadius: 0,
  );

  static Border containerBorder = Border.all(
    color: AppColors.black,
    width: 3,
  );
}
