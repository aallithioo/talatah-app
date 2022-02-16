import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../themes/color.dart';
import '../themes/size.dart';
import 'margin.dart';

class SetSnackbarStatus {
  static const String success = 'Success';
  static const String error = 'Oops';
}

class SetSnackbarMessage {
  static const String created = 'Item successfully created';
  static const String updated = 'Item successfully updated';
  static const String deleted = 'Item successfully deleted';
  static const String error = 'Feature not available yet';
}

class SetSnackbar {
  static final error = Get.snackbar(
    SetSnackbarStatus.error,
    SetSnackbarMessage.error,
    icon: Icon(
      Icons.notifications,
      size: SetSize.medium,
      color: SetColor.white_900,
    ),
    snackPosition: SnackPosition.TOP,
    borderRadius: 12,
    margin: SetMargin.allMedium,
    colorText: SetColor.white_900,
    duration: const Duration(seconds: 4),
    isDismissible: true,
    dismissDirection: DismissDirection.horizontal,
    forwardAnimationCurve: Curves.easeOutBack,
    reverseAnimationCurve: Curves.easeIn,
    barBlur: SetSize.medium,
    shouldIconPulse: true,
  );
  static final created = Get.snackbar(
    SetSnackbarStatus.error,
    SetSnackbarMessage.created,
    icon: Icon(
      Icons.notifications,
      size: SetSize.medium,
      color: SetColor.white_900,
    ),
    snackPosition: SnackPosition.TOP,
    borderRadius: 12,
    margin: SetMargin.allMedium,
    colorText: SetColor.white_900,
    duration: const Duration(seconds: 4),
    isDismissible: true,
    dismissDirection: DismissDirection.horizontal,
    forwardAnimationCurve: Curves.easeOutBack,
    reverseAnimationCurve: Curves.easeIn,
    barBlur: SetSize.medium,
    shouldIconPulse: true,
  );
  static final updated = Get.snackbar(
    SetSnackbarStatus.error,
    SetSnackbarMessage.updated,
    icon: Icon(
      Icons.notifications,
      size: SetSize.medium,
      color: SetColor.white_900,
    ),
    snackPosition: SnackPosition.TOP,
    borderRadius: 12,
    margin: SetMargin.allMedium,
    colorText: SetColor.white_900,
    duration: const Duration(seconds: 4),
    isDismissible: true,
    dismissDirection: DismissDirection.horizontal,
    forwardAnimationCurve: Curves.easeOutBack,
    reverseAnimationCurve: Curves.easeIn,
    barBlur: SetSize.medium,
    shouldIconPulse: true,
  );
  static final deleted = Get.snackbar(
    SetSnackbarStatus.success,
    SetSnackbarMessage.deleted,
    icon: Icon(
      Icons.notifications,
      size: SetSize.medium,
      color: SetColor.white_900,
    ),
    snackPosition: SnackPosition.TOP,
    borderRadius: 12,
    margin: SetMargin.allMedium,
    colorText: SetColor.white_900,
    duration: const Duration(seconds: 4),
    isDismissible: true,
    dismissDirection: DismissDirection.horizontal,
    forwardAnimationCurve: Curves.easeOutBack,
    reverseAnimationCurve: Curves.easeIn,
    barBlur: SetSize.medium,
    shouldIconPulse: true,
  );
}
