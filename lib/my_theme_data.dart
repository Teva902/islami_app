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

  static final ThemeData darkMode = ThemeData(
      primaryColor: AppColors.primaryDarkColor,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          foregroundColor: AppColors.whiteColor,
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true),
      textTheme: TextTheme(
        bodyLarge: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: AppColors.whiteColor,
        ),
        bodyMedium: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600,
            color: AppColors.whiteColor),
        bodySmall: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: AppColors.blackColor),
        titleLarge: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: AppColors.whiteColor),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: AppColors.yellowColor,
          unselectedItemColor: AppColors.whiteColor),
      iconTheme: IconThemeData(color: AppColors.whiteColor));
}
