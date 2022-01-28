import 'package:aallithioo/src/app/themes/theme.dart';
import 'package:flutter/material.dart';

import '../themes/fontweight.dart';

AppBar kAppBar(String title, [Icon? firstIcon, Icon? secondIcon]) {
  return AppBar(
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: kThioAlli.textTheme.headline6!.copyWith(
            color: kThioAlli.textTheme.headline6!.color,
            fontWeight: kFontWeightMedium,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            // IconButton(
            //   icon: firstIcon ??
            //       Icon(
            //         Icons.notifications_rounded,
            //         color: kWhiteColorShade500,
            //       ),
            //   color: kWhiteColorShade500,
            //   onPressed: () {},
            // ),
            // IconButton(
            //   icon: secondIcon ??
            //       Icon(
            //         Icons.shopping_bag_rounded,
            //         color: kWhiteColorShade500,
            //       ),
            //   color: kWhiteColorShade500,
            //   onPressed: () {},
            // ),
          ],
        ),
      ],
    ),
    backgroundColor: Colors.transparent,
    foregroundColor: kThioAlli.textTheme.headline1!.color,
    shadowColor: Colors.transparent,
    elevation: 0.0,
    automaticallyImplyLeading: false,
  );
}
