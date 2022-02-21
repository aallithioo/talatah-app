part of '../theme_screen.dart';

class ThemeBody extends StatelessWidget {
  const ThemeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: SetPadding.symetricHorizontalMedium,
        child: const ThemeContent(),
      ),
    );
  }
}
