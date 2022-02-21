part of '../hall_of_fame_screen.dart';

class HallOfFameBody extends StatelessWidget {
  const HallOfFameBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: SetPadding.symetricHorizontalMedium,
        child: const HallOfFameContent(),
      ),
    );
  }
}
