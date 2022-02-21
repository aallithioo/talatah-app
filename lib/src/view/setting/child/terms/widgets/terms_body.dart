part of '../terms_screen.dart';

class TermsBody extends StatelessWidget {
  const TermsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: SetPadding.symetricHorizontalMedium,
        child: const TermsContent(),
      ),
    );
  }
}
