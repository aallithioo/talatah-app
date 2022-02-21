part of '../setting_screen.dart';

class SettingContent extends StatelessWidget {
  const SettingContent({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SetSizeBox.verticalMedium,
        Container(
          padding: SetPadding.allSmall,
          width: double.infinity,
          decoration: BoxDecoration(
            color: SetColor.secondary,
            borderRadius: SetBorder.radiusAllTiny,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    Routes.theme,
                  );
                },
                child: Text(
                  'Theme',
                  style: kThioAlli.textTheme.button!.copyWith(
                    color: SetColor.accent,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              SetDivider.thin,
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    Routes.hallOfFame,
                  );
                },
                child: Text(
                  'Hall of Fame',
                  style: kThioAlli.textTheme.button!.copyWith(
                    color: SetColor.accent,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              SetDivider.thin,
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    Routes.releaseNotes,
                  );
                },
                child: Text(
                  'Release Notes',
                  style: kThioAlli.textTheme.button!.copyWith(
                    color: SetColor.accent,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ),
        SetSizeBox.verticalMedium,
        Container(
          padding: SetPadding.allSmall,
          width: double.infinity,
          decoration: BoxDecoration(
            color: SetColor.secondary,
            borderRadius: SetBorder.radiusAllTiny,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    Routes.support,
                  );
                },
                child: Text(
                  'Support',
                  style: kThioAlli.textTheme.button!.copyWith(
                    color: SetColor.accent,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              SetDivider.thin,
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    Routes.reportBug,
                  );
                },
                child: Text(
                  'Report Bug',
                  style: kThioAlli.textTheme.button!.copyWith(
                    color: SetColor.accent,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              SetDivider.thin,
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    Routes.termsOfService,
                  );
                },
                child: Text(
                  'Terms',
                  style: kThioAlli.textTheme.button!.copyWith(
                    color: SetColor.accent,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              SetDivider.thin,
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    Routes.privacyPolicy,
                  );
                },
                child: Text(
                  'Privacy Policy',
                  style: kThioAlli.textTheme.button!.copyWith(
                    color: SetColor.accent,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              SetDivider.thin,
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    Routes.about,
                  );
                },
                child: Text(
                  'About',
                  style: kThioAlli.textTheme.button!.copyWith(
                    color: SetColor.accent,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
