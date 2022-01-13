import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../theme/size.dart';
import '../theme/color.dart';
import 'custom_border.dart';
import 'custom_margin.dart';

SnackBar? kSnackBar(String message) {
  return SnackBar(
    margin: kMarginAllLarge,
    behavior: SnackBarBehavior.floating,
    backgroundColor: kErrorColor,
    dismissDirection: DismissDirection.horizontal,
    shape: kRoundedBorderRadiusMedium,
    duration: const Duration(milliseconds: 1000),
    content: GetSnackBar(
      title: "Oops!",
      message: message,
      icon: Icon(
        Icons.notifications_on_rounded,
        color: kWhiteColorShade900,
        size: kSizeMedium,
      ),
      backgroundColor: kErrorColor,
      margin: kMarginAllSmall,
      forwardAnimationCurve: Curves.easeOutBack,
      barBlur: 20,
      shouldIconPulse: true,
    ),
  );
}
