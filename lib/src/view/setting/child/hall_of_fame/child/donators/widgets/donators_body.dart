part of '../donators_screen.dart';

class DonatorsBody extends StatelessWidget {
  const DonatorsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: SetPadding.symetricHorizontalMedium,
        child: const DonatorsContent(),
      ),
    );
  }
}
