import 'package:flutter/material.dart';

import '../themes/color.dart';
import '../themes/font_weight.dart';
import '../themes/size.dart';
import '../themes/theme.dart';

AppBar kAppBar(String title, [Icon? firstIcon, Icon? secondIcon]) {
  return AppBar(
    title: Text(
      title,
      style: kThioAlli.textTheme.headline6!.copyWith(
        color: SetColor.accent,
        fontSize: SetSize.medium,
        fontWeight: SetFontWeight.medium,
      ),
    ),
    backgroundColor: Colors.transparent,
    centerTitle: true,
    foregroundColor: kThioAlli.textTheme.headline1!.color,
    shadowColor: Colors.transparent,
    elevation: 0.0,
    automaticallyImplyLeading: false,
  );
}
