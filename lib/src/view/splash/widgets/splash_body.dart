part of '../splash_screen.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: SetPadding.symetricHorizontalLarge,
        child: const Center(
          child: SplashContent(),
        ),
      ),
    );
  }
}
