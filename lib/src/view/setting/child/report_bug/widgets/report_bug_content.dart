part of '../report_bug_screen.dart';

class ReportBugContent extends StatelessWidget {
  const ReportBugContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const Spacer(),
        Text(
          'Did you found a bug?',
          style: kThioAlli.textTheme.headline5!.copyWith(
            color: SetColor.accent,
            fontWeight: SetFontWeight.bold,
          ),
          textAlign: SetTextAlign.center,
        ),
        SetSizeBox.verticalSmall,
        Text(
          'Report it to connect.thioalli@gmail.com\nclick the button to get the format',
          style: kThioAlli.textTheme.bodyText1!.copyWith(
            color: SetColor.accent,
          ),
          textAlign: SetTextAlign.center,
        ),
        SetSizeBox.verticalMedium,
        Padding(
          padding: SetPadding.symetricHorizontalLarge,
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
                SetSnackbar.error;
              },
              child: Text(
                'Give me a copy',
                style: kThioAlli.textTheme.button!.copyWith(
                  color: SetColor.accent,
                  fontWeight: SetFontWeight.light,
                ),
              ),
            ),
          ),
        ),
        const Spacer(),
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
        ),
      ],
    );
  }
}
