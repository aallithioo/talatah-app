import 'package:flutter/material.dart';

import 'typography.dart';
import 'themedata.dart';

class Theme {
  // Theme data
  static ThemeData kThioAlliLightThemeData() => kLightThemeData();
  static ThemeData kThioAlliDarkThemeData() => kDarkThemeData();

  // Text theme
  static TextTheme kThioAlliLightTextTheme() => kLightText;
  static TextTheme kThioAlliDarkTextTheme() => kDarkText;
}

final kThioAlli = Theme.kThioAlliLightThemeData();
