import 'package:flutter/material.dart';

class settingProider extends ChangeNotifier {
  ThemeMode currentTheme = ThemeMode.light;

  void changeTheme(ThemeMode newTheme) {
    if (currentTheme == newTheme) return;
    currentTheme = newTheme;
    notifyListeners();
  }

  String GetBackground() {
    return currentTheme == ThemeMode.dark
        ? "assets/images/DarkBg.png"
        : "assets/images/bg3.png";
  }

  bool isDark() {
    return currentTheme == ThemeMode.dark;
  }
}
