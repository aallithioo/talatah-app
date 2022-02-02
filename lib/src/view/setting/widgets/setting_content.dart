part of '../setting_screen.dart';

class SettingContent extends StatelessWidget {
  const SettingContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: kPaddingAllSmall,
          width: double.infinity,
          decoration: BoxDecoration(
            color: kSecondaryColor,
            borderRadius: kBorderRadiusTiny,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButton(
                onPressed: () {
                  Get.snackbar(
                    "Oops",
                    "Feature still not available yet",
                    icon: Icon(
                      Icons.notifications,
                      size: kSizeMedium,
                      color: kWhiteColorShade900,
                    ),
                    snackPosition: SnackPosition.TOP,
                    borderRadius: 12,
                    margin: kMarginAllMedium,
                    colorText: kWhiteColorShade900,
                    duration: const Duration(seconds: 4),
                    isDismissible: true,
                    dismissDirection: DismissDirection.horizontal,
                    forwardAnimationCurve: Curves.easeOutBack,
                    reverseAnimationCurve: Curves.easeIn,
                    barBlur: kSizeMedium,
                    shouldIconPulse: true,
                  );
                },
                child: Text(
                  'Theme',
                  style: kThioAlli.textTheme.button!.copyWith(
                    color: kAccentColor,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              kDivider,
              TextButton(
                onPressed: () {
                  Get.snackbar(
                    "Oops",
                    "Feature still not available yet",
                    icon: Icon(
                      Icons.notifications,
                      size: kSizeMedium,
                      color: kWhiteColorShade900,
                    ),
                    snackPosition: SnackPosition.TOP,
                    borderRadius: 12,
                    margin: kMarginAllMedium,
                    colorText: kWhiteColorShade900,
                    duration: const Duration(seconds: 4),
                    isDismissible: true,
                    dismissDirection: DismissDirection.horizontal,
                    forwardAnimationCurve: Curves.easeOutBack,
                    reverseAnimationCurve: Curves.easeIn,
                    barBlur: kSizeMedium,
                    shouldIconPulse: true,
                  );
                },
                child: Text(
                  'Export Data',
                  style: kThioAlli.textTheme.button!.copyWith(
                    color: kAccentColor,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              kDivider,
              TextButton(
                onPressed: () {
                  Get.snackbar(
                    "Oops",
                    "Feature still not available yet",
                    icon: Icon(
                      Icons.notifications,
                      size: kSizeMedium,
                      color: kWhiteColorShade900,
                    ),
                    snackPosition: SnackPosition.TOP,
                    borderRadius: 12,
                    margin: kMarginAllMedium,
                    colorText: kWhiteColorShade900,
                    duration: const Duration(seconds: 4),
                    isDismissible: true,
                    dismissDirection: DismissDirection.horizontal,
                    forwardAnimationCurve: Curves.easeOutBack,
                    reverseAnimationCurve: Curves.easeIn,
                    barBlur: kSizeMedium,
                    shouldIconPulse: true,
                  );
                },
                child: Text(
                  'Release Notes',
                  style: kThioAlli.textTheme.button!.copyWith(
                    color: kAccentColor,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ),
        kSizeBoxVerticalMedium,
        Container(
          padding: kPaddingAllSmall,
          width: double.infinity,
          decoration: BoxDecoration(
            color: kSecondaryColor,
            borderRadius: kBorderRadiusTiny,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButton(
                onPressed: () {
                  Get.snackbar(
                    "Oops",
                    "Feature still not available yet",
                    icon: Icon(
                      Icons.notifications,
                      size: kSizeMedium,
                      color: kWhiteColorShade900,
                    ),
                    snackPosition: SnackPosition.TOP,
                    borderRadius: 12,
                    margin: kMarginAllMedium,
                    colorText: kWhiteColorShade900,
                    duration: const Duration(seconds: 4),
                    isDismissible: true,
                    dismissDirection: DismissDirection.horizontal,
                    forwardAnimationCurve: Curves.easeOutBack,
                    reverseAnimationCurve: Curves.easeIn,
                    barBlur: kSizeMedium,
                    shouldIconPulse: true,
                  );
                },
                child: Text(
                  'Support',
                  style: kThioAlli.textTheme.button!.copyWith(
                    color: kAccentColor,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              kDivider,
              TextButton(
                onPressed: () {
                  Get.snackbar(
                    "Oops",
                    "Feature still not available yet",
                    icon: Icon(
                      Icons.notifications,
                      size: kSizeMedium,
                      color: kWhiteColorShade900,
                    ),
                    snackPosition: SnackPosition.TOP,
                    borderRadius: 12,
                    margin: kMarginAllMedium,
                    colorText: kWhiteColorShade900,
                    duration: const Duration(seconds: 4),
                    isDismissible: true,
                    dismissDirection: DismissDirection.horizontal,
                    forwardAnimationCurve: Curves.easeOutBack,
                    reverseAnimationCurve: Curves.easeIn,
                    barBlur: kSizeMedium,
                    shouldIconPulse: true,
                  );
                },
                child: Text(
                  'Report Bug',
                  style: kThioAlli.textTheme.button!.copyWith(
                    color: kAccentColor,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              kDivider,
              TextButton(
                onPressed: () {
                  Get.snackbar(
                    "Oops",
                    "Feature still not available yet",
                    icon: Icon(
                      Icons.notifications,
                      size: kSizeMedium,
                      color: kWhiteColorShade900,
                    ),
                    snackPosition: SnackPosition.TOP,
                    borderRadius: 12,
                    margin: kMarginAllMedium,
                    colorText: kWhiteColorShade900,
                    duration: const Duration(seconds: 4),
                    isDismissible: true,
                    dismissDirection: DismissDirection.horizontal,
                    forwardAnimationCurve: Curves.easeOutBack,
                    reverseAnimationCurve: Curves.easeIn,
                    barBlur: kSizeMedium,
                    shouldIconPulse: true,
                  );
                },
                child: Text(
                  'Privacy Policy',
                  style: kThioAlli.textTheme.button!.copyWith(
                    color: kAccentColor,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              kDivider,
              TextButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, Routes.about);
                },
                child: Text(
                  'About',
                  style: kThioAlli.textTheme.button!.copyWith(
                    color: kAccentColor,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
