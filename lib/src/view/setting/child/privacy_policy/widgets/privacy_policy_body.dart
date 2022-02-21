part of '../privacy_policy_screen.dart';

class PrivacyPolicyBody extends StatelessWidget {
  const PrivacyPolicyBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: SetPadding.symetricHorizontalMedium,
        child: const PrivacyPolicyContent(),
      ),
    );
  }
}
