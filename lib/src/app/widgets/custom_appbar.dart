import 'package:flutter/material.dart';
import '../theme/color.dart';
import '../theme/theme.dart';

AppBar kAppBar(String title, [Icon? firstIcon, Icon? secondIcon]) {
  return AppBar(
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: talatah.textTheme.headline6!.copyWith(
            color: talatah.textTheme.headline6!.color,
            fontWeight: FontWeight.w300,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              icon: firstIcon ??
                  Icon(
                    Icons.notifications_rounded,
                    color: kWhiteColorShade500,
                  ),
              color: kWhiteColorShade500,
              onPressed: () {},
            ),
            IconButton(
              icon: secondIcon ??
                  Icon(
                    Icons.shopping_bag_rounded,
                    color: kWhiteColorShade500,
                  ),
              color: kWhiteColorShade500,
              onPressed: () {},
            ),
          ],
        ),
      ],
    ),
    backgroundColor: Colors.transparent,
    foregroundColor: talatah.textTheme.headline1!.color,
    shadowColor: Colors.transparent,
    elevation: 0.0,
  );
}
