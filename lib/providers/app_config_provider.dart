import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppConfigProvider extends ChangeNotifier {
  String appLanguage = 'en';
  ThemeMode appTheme = ThemeMode.dark;

  void changeLanguage(String newLanguage) async {
    if (appLanguage == newLanguage) {
      return;
    }
    appLanguage = newLanguage;
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('language', appLanguage);
    notifyListeners();
  }

  void getSettings() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? language = prefs.getString('language');
    if (language != null) {
      if (language == 'en') {
        appLanguage = 'en';
      } else {
        appLanguage = 'ar';
      }
    }
    bool? isDark = prefs.getBool('isDark');
    if (isDark != null) {
      if (isDark == true) {
        appTheme = ThemeMode.dark;
      } else {
        appTheme = ThemeMode.light;
      }
      notifyListeners();
    }
  }

  void changeTheme(ThemeMode newTheme) async {
    if (appTheme == newTheme) {
      return;
    }
    appTheme = newTheme;
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isDark', appTheme == ThemeMode.dark);
    notifyListeners();
  }

  bool isDarkMode() {
    return appTheme == ThemeMode.dark;
  }
}
