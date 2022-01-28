import 'package:flutter/material.dart';

import 'fontweight.dart';
import 'color.dart';
import 'typeface.dart';

// Light Text Theme
TextTheme kLightText = TextTheme(
  headline1: kPrimaryTypeface.copyWith(
    fontSize: 93,
    fontWeight: kFontWeightLight,
    letterSpacing: -1.5,
    color: kLightColor,
  ),
  headline2: kPrimaryTypeface.copyWith(
    fontSize: 58,
    fontWeight: kFontWeightLight,
    letterSpacing: -0.5,
    color: kLightColor,
  ),
  headline3: kPrimaryTypeface.copyWith(
    fontSize: 47,
    fontWeight: kFontWeightNormal,
    color: kLightColor,
  ),
  headline4: kPrimaryTypeface.copyWith(
    fontSize: 33,
    fontWeight: kFontWeightNormal,
    letterSpacing: 0.25,
    color: kLightColor,
  ),
  headline5: kPrimaryTypeface.copyWith(
    fontSize: 23,
    fontWeight: kFontWeightNormal,
    color: kLightColor,
  ),
  headline6: kPrimaryTypeface.copyWith(
    fontSize: 19,
    fontWeight: kFontWeightMedium,
    letterSpacing: 0.15,
    color: kLightColor,
  ),
  subtitle1: kPrimaryTypeface.copyWith(
    fontSize: 16,
    fontWeight: kFontWeightNormal,
    letterSpacing: 0.15,
    color: kLightColor,
  ),
  subtitle2: kPrimaryTypeface.copyWith(
    fontSize: 14,
    fontWeight: kFontWeightMedium,
    letterSpacing: 0.1,
    color: kLightColor,
  ),
  bodyText1: kSecondaryTypeface.copyWith(
    fontSize: 16,
    fontWeight: kFontWeightNormal,
    letterSpacing: 0.5,
    color: kLightColor,
  ),
  bodyText2: kSecondaryTypeface.copyWith(
    fontSize: 14,
    fontWeight: kFontWeightNormal,
    letterSpacing: 0.25,
    color: kLightColor,
  ),
  button: kSecondaryTypeface.copyWith(
    fontSize: 14,
    fontWeight: kFontWeightMedium,
    letterSpacing: 1.25,
    color: kLightColor,
  ),
  caption: kSecondaryTypeface.copyWith(
    fontSize: 12,
    fontWeight: kFontWeightNormal,
    letterSpacing: 0.4,
    color: kLightColor,
  ),
  overline: kSecondaryTypeface.copyWith(
    fontSize: 10,
    fontWeight: kFontWeightNormal,
    letterSpacing: 1.5,
    color: kLightColor,
  ),
);

// Dark Text Theme
TextTheme kDarkText = TextTheme(
  headline1: kPrimaryTypeface.copyWith(
    fontSize: 93,
    fontWeight: kFontWeightLight,
    letterSpacing: -1.5,
    color: kDarkColor,
  ),
  headline2: kPrimaryTypeface.copyWith(
    fontSize: 58,
    fontWeight: kFontWeightLight,
    letterSpacing: -0.5,
    color: kDarkColor,
  ),
  headline3: kPrimaryTypeface.copyWith(
    fontSize: 47,
    fontWeight: kFontWeightNormal,
    color: kDarkColor,
  ),
  headline4: kPrimaryTypeface.copyWith(
    fontSize: 33,
    fontWeight: kFontWeightNormal,
    letterSpacing: 0.25,
    color: kDarkColor,
  ),
  headline5: kPrimaryTypeface.copyWith(
    fontSize: 23,
    fontWeight: kFontWeightNormal,
    color: kDarkColor,
  ),
  headline6: kPrimaryTypeface.copyWith(
    fontSize: 19,
    fontWeight: kFontWeightMedium,
    letterSpacing: 0.15,
    color: kDarkColor,
  ),
  subtitle1: kPrimaryTypeface.copyWith(
    fontSize: 16,
    fontWeight: kFontWeightNormal,
    letterSpacing: 0.15,
    color: kDarkColor,
  ),
  subtitle2: kPrimaryTypeface.copyWith(
    fontSize: 14,
    fontWeight: kFontWeightMedium,
    letterSpacing: 0.1,
    color: kDarkColor,
  ),
  bodyText1: kSecondaryTypeface.copyWith(
    fontSize: 16,
    fontWeight: kFontWeightNormal,
    letterSpacing: 0.5,
    color: kDarkColor,
  ),
  bodyText2: kSecondaryTypeface.copyWith(
    fontSize: 14,
    fontWeight: kFontWeightNormal,
    letterSpacing: 0.25,
    color: kDarkColor,
  ),
  button: kSecondaryTypeface.copyWith(
    fontSize: 14,
    fontWeight: kFontWeightMedium,
    letterSpacing: 1.25,
    color: kDarkColor,
  ),
  caption: kSecondaryTypeface.copyWith(
    fontSize: 12,
    fontWeight: kFontWeightNormal,
    letterSpacing: 0.4,
    color: kDarkColor,
  ),
  overline: kSecondaryTypeface.copyWith(
    fontSize: 10,
    fontWeight: kFontWeightNormal,
    letterSpacing: 1.5,
    color: kDarkColor,
  ),
);
