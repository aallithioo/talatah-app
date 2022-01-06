import 'package:flutter/material.dart';
import 'typography.dart';
import 'themedata.dart';

class TalatahTheme {
  // Theme data
  static ThemeData kTalatahLightThemeData() => kLightThemeData();
  static ThemeData kTalatahDarkThemeData() => kDarkThemeData();

  // Text theme
  static TextTheme kTalatahLightTextTheme() => kLightText;
  static TextTheme kTalatahDarkTextTheme() => kDarkText;
}

final talatah = TalatahTheme.kTalatahLightThemeData();
