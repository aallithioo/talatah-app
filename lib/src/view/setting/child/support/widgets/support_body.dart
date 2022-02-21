part of '../support_screen.dart';

class SupportBody extends StatelessWidget {
  const SupportBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: SetPadding.symetricHorizontalMedium,
        child: const SupportContent(),
      ),
    );
  }
}
