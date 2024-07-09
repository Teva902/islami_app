import 'package:flutter/material.dart';
import 'package:islami_app/app_colors.dart';

class MyThemeData {
  static final ThemeData lightMode = ThemeData(
      primaryColor: AppColors.primaryLightColor,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent, elevation: 0, centerTitle: true),
      textTheme: TextTheme(
        bodyLarge: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: AppColors.blackColor,
        ),
        bodyMedium: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
        bodySmall: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        titleLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
      ),
      bottomNavigationBarTheme:
          BottomNavigationBarThemeData(selectedItemColor: AppColors.blackColor),
      iconTheme: IconThemeData(color: AppColors.blackColor));
}
