part of '../splash_screen.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: kPaddingSymetricHorizontalLarge,
        child: Center(
          child: Text(
            'talatah',
            style: kThioAlli.textTheme.headline6!.copyWith(
              color: kWhiteColorShade900,
              fontSize: kSizeMedium,
              fontWeight: kFontWeightBold,
            ),
          ),
        ),
      ),
    );
  }
}
