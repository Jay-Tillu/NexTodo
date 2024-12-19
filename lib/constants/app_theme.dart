import 'package:flutter/material.dart';
import 'package:nextodo/constants/custom_colors.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    fontFamily: 'Geist',
    colorScheme: ColorScheme.light(
      primary: CustomColors.primaryColor,
      surface: CustomColors.surfaceColor,
      
    ),
  );
}
