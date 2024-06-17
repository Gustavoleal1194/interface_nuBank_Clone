import 'package:flutter/material.dart';
import 'package:replica_nubank/app/modules/home_page/theme.dart';

class ThemeNotifier extends ChangeNotifier {
  ThemeData _currentTheme;
  bool _isDarkTheme;

  ThemeNotifier(this._currentTheme, this._isDarkTheme);

  ThemeData get currentTheme => _currentTheme;
  bool get isDarkTheme => _isDarkTheme;

  void toggleTheme() {
    if (_isDarkTheme) {
      _currentTheme = MyThemes.lightTheme;
      _isDarkTheme = false;
    } else {
      _currentTheme = MyThemes.darkTheme;
      _isDarkTheme = true;
    }
    notifyListeners();
  }
}
