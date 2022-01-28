import 'package:flutter/material.dart';

import 'color.dart';
import 'typography.dart';

ThemeData kDarkThemeData() {
  return ThemeData(
    brightness: Brightness.dark,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      foregroundColor: kLightColor,
      backgroundColor: kBlueColorShade600,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: kBlueColorShade600,
    ),
    textTheme: kLightText,
  );
}

ThemeData kLightThemeData() {
  return ThemeData(
    brightness: Brightness.light,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      foregroundColor: kDarkColor,
      backgroundColor: kBlueColorShade600,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: kBlueColorShade600,
    ),
    textTheme: kDarkText,
  );
}
