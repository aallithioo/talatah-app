part of '../about_screen.dart';

class AboutBody extends StatelessWidget {
  const AboutBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: SetPadding.symetricVerticalLarge,
        child: const AboutContent(),
      ),
    );
  }
}
