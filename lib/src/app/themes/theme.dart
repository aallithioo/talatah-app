import 'package:flutter/material.dart';

import 'themedata.dart';
import 'typograph.dart';

class SetTheme {
  // Theme data
  static ThemeData setLightTheme() => SetThemeData.lightThemeData();
  static ThemeData setDarkTheme() => SetThemeData.darkThemeData();

  // Text theme
  static TextTheme setLightTextTheme() => SetTextTheme.lightTextTheme;
  static TextTheme setDarkTextTheme() => SetTextTheme.darkTextTheme;
}

final kThioAlli = SetTheme.setDarkTheme();
