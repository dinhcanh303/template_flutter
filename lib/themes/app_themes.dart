import 'package:flutter/material.dart';
import 'package:flutter_food/themes/app_theme_colors.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: LightTheme.scaffoldBackgroundColor,
    primaryColor: LightTheme.primaryColor,
    appBarTheme: AppBarTheme(
      backgroundColor: LightTheme.primaryColor,
      iconTheme: IconThemeData(color: LightTheme.icon),
    ),
    backgroundColor: LightTheme.backgroundColor,
  );
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: DarkTheme.scaffoldBackgroundColor,
    primaryColor: DarkTheme.primaryColor,
    backgroundColor: DarkTheme.backgroundColor,
  );
}

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.system;
  bool get isLightModeOrSystem =>
      themeMode == ThemeMode.system || themeMode == ThemeMode.light;
  void toggleTheme(bool isOn) {
    themeMode = isOn ? ThemeMode.light : ThemeMode.dark;
    notifyListeners();
  }
}
