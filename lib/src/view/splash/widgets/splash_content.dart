part of '../splash_screen.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'talatah',
      style: kThioAlli.textTheme.headline6!.copyWith(
        color: SetColor.white_900,
        fontSize: SetSize.medium,
        fontWeight: SetFontWeight.bold,
      ),
    );
  }
}
