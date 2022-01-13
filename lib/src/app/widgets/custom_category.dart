import 'package:flutter/material.dart';
import '../theme/color.dart';
import '../theme/size.dart';
import '../theme/theme.dart';
import 'custom_border.dart';

final grade = <String>[
  'SD Kelas 1',
  'SD Kelas 2',
  'SD Kelas 3',
  'SD Kelas 4',
  'SD Kelas 5',
  'SD Kelas 6',
  'SMP Kelas 7',
  'SMP Kelas 8',
  'SMP Kelas 9',
  'SMP Kelas 10',
  'SMA Kelas 11',
  'SMA Kelas 12',
];

Widget categoryList(int index) {
  return TextButton(
    onPressed: () {},
    child: Container(
      decoration: BoxDecoration(
        borderRadius: kBorderRadiusSmall,
        color: kBlueColorShade300,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: kSizeSmall,
        vertical: kSizeSmall / 2,
      ),
      child: Text(
        grade[index],
        style: talatah.textTheme.caption!.copyWith(
          color: talatah.textTheme.caption!.color,
          fontSize: 10,
          fontWeight: FontWeight.w300,
        ),
      ),
    ),
  );
}
