import 'package:flutter/material.dart';
import '../theme/theme.dart';

AppBar kAppBar(String title) {
  return AppBar(
    title: Text(
      title,
      style: talatah.textTheme.headline6!.copyWith(
        fontWeight: FontWeight.w300,
      ),
    ),
    centerTitle: true,
    backgroundColor: Colors.transparent,
    foregroundColor: talatah.textTheme.headline1!.color,
    shadowColor: Colors.transparent,
    elevation: 0.0,
  );
}
