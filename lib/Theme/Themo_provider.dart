import 'package:flutter/material.dart';
import 'package:untitled1/Theme/Dark_mode.dart';
import 'package:untitled1/Theme/Light_mode.dart';

class ThemeProvider with ChangeNotifier{
  ThemeData _themeData = LightMode;
  ThemeData  get themeData => _themeData;
  bool get isDarkMode  => _themeData == DarkMode;

  set themeData (ThemeData themeData)
  {
    _themeData = themeData;
    notifyListeners();
  }

  void toggleTheme()
  {
    if(_themeData == LightMode)
      {
        themeData = DarkMode;
      } else{
          themeData = LightMode;
        }
  }
}