import 'package:flutter/material.dart';
import 'package:islami_app/core/theme/color_palette.dart';

abstract class AppThemeManager {
  static ThemeData AppThemeData() => ThemeData(
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: ColorPalette.primaryColor,
      selectedItemColor: Colors.white,
      selectedLabelStyle: TextStyle(
        fontFamily: 'Janna',
        fontSize: 12,
        fontWeight: FontWeight.w700,
      ),
      unselectedItemColor: ColorPalette.unSelectedItemColor,
      showUnselectedLabels: false,
    ),
    textTheme: TextTheme(
      headlineSmall: TextStyle(
        fontFamily: 'Janna',
        fontWeight: FontWeight.w700,
        color: ColorPalette.secondTitleTextColor,
      ),
      titleLarge: TextStyle(
        fontFamily: "Janna",
        fontWeight: FontWeight.w700,
        color: ColorPalette.secondTitleTextColor,
      ),
      bodyLarge: TextStyle(
        fontFamily: "Janna",
        fontWeight: FontWeight.w700,
        color: ColorPalette.secondTitleTextColor,
      ),
      bodyMedium: TextStyle(
        fontFamily: "Janna",
        fontWeight: FontWeight.w700,
        color: ColorPalette.secondTitleTextColor,
      ),
    ),
  );
}
