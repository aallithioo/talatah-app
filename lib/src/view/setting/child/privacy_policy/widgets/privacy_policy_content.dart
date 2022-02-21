part of '../privacy_policy_screen.dart';

class PrivacyPolicyContent extends StatelessWidget {
  const PrivacyPolicyContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: SetPadding.onlyBottomMedium,
          child: Container(
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(
              color: SetColor.transparent,
              borderRadius: SetBorder.radiusAllTiny,
              border: Border.all(
                color: SetColor.accent,
                width: 0.8,
              ),
            ),
            child: TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'Back',
                style: kThioAlli.textTheme.button!.copyWith(
                  color: SetColor.accent,
                  fontWeight: SetFontWeight.light,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
