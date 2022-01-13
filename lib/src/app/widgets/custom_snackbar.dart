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
    shape: kRoundedBorderRadiusMedium,
    dismissDirection: DismissDirection.horizontal,
    duration: const Duration(milliseconds: 3000),
    content: GetSnackBar(
      title: "Oops!",
      message: message,
      icon: Icon(
        Icons.notifications_on_rounded,
        color: kWhiteColorShade900,
        size: kSizeMedium,
      ),
      snackPosition: SnackPosition.TOP,
      snackStyle: SnackStyle.FLOATING,
      backgroundColor: kErrorColor,
      margin: kMarginAllSmall,
      forwardAnimationCurve: Curves.easeOutBack,
      reverseAnimationCurve: Curves.easeInBack,
      animationDuration: const Duration(milliseconds: 500),
      barBlur: 20,
      shouldIconPulse: true,
    ),
  );
}
