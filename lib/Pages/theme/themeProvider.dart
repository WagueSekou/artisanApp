import 'package:flutter/material.dart';
import 'package:my_app/Pages/theme/darkMode.dart';
import 'package:my_app/Pages/theme/lightMode.dart';

class Themeprovider with ChangeNotifier {
  ThemeData _themeData = lightMode;

//get theme
  ThemeData get themeData => _themeData;

  bool get isDarkMode => _themeData == darkMode;

  set themeData(ThemeData themeData) {
    _themeData = themeData;
    //update ui
    notifyListeners();
  }

  //toggeling theme
  void toggleTheme() {
    if (_themeData == lightMode) {
      themeData = darkMode;
    } else {
      themeData = lightMode;
    }
  }
}
