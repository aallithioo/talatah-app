import 'package:aallithioo/src/app/themes/color.dart';
import 'package:aallithioo/src/app/themes/size.dart';
import 'package:aallithioo/src/app/themes/theme.dart';
import 'package:flutter/material.dart';

import '../themes/fontweight.dart';

AppBar kAppBar(String title, [Icon? firstIcon, Icon? secondIcon]) {
  return AppBar(
    title: Text(
      title,
      style: kThioAlli.textTheme.headline6!.copyWith(
        color: kAccentColor,
        fontSize: kSizeMedium,
        fontWeight: kFontWeightMedium,
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
