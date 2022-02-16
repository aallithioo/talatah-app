import 'package:flutter/material.dart';

import 'color.dart';
import 'typograph.dart';

class SetThemeData {
  static ThemeData darkThemeData() {
    return ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: SetColor.navy,
      backgroundColor: SetColor.navy,
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        foregroundColor: SetColor.light,
        backgroundColor: SetColor.navy,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: SetColor.navy,
      ),
      textTheme: SetTextTheme.lightTextTheme,
    );
  }

  static ThemeData lightThemeData() {
    return ThemeData(
      brightness: Brightness.light,
      scaffoldBackgroundColor: SetColor.light,
      backgroundColor: SetColor.light,
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        foregroundColor: SetColor.navy,
        backgroundColor: SetColor.light,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: SetColor.light,
      ),
      textTheme: SetTextTheme.darkTextTheme,
    );
  }
}
