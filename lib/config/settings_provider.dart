import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier {
  String currentLanguage = "en";
  ThemeMode currentThemeMode = ThemeMode.dark;

  changeLanguage(String newLanguage) {
    if (currentLanguage == newLanguage) return;
    currentLanguage = newLanguage;
    notifyListeners();
  }

  changeTheme(ThemeMode newTheme) {
    if (currentThemeMode == newTheme) return;
    currentThemeMode = newTheme;
    notifyListeners();
  }

  String getBackground() {
    return currentThemeMode == ThemeMode.dark
        ? "assets/images/main_dark_background.png"
        : "assets/images/main_background.png";
  }

  bool isDark() {
    return currentThemeMode == ThemeMode.dark;
  }
}
