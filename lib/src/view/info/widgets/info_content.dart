part of '../info_screen.dart';

class InfoContent extends StatelessWidget {
  const InfoContent({
    Key? key,
    this.version,
    this.description,
    this.changes,
  }) : super(key: key);

  final String? version, description, changes;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: kMarginSymetricVerticalTiny,
      padding: kPaddingSymetricHorizontalLarge,
      decoration: BoxDecoration(
        color: kSecondaryColor,
        borderRadius: kBorderRadiusSmall,
      ),
      child: Container(
        margin: kMarginSymetricVerticalMedium,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // kSizeBoxVerticalLarge,
            // TODO: Add version
            Text(
              version!,
              style: kThioAlli.textTheme.headline6!.copyWith(
                color: kAccentColor,
                fontWeight: kFontWeightSemiBold,
              ),
              textAlign: kTextAlignLeft,
            ),
            // kSizeBoxVerticalTiny,
            // TODO: Add descriptions
            Text(
              description!,
              style: kThioAlli.textTheme.bodyText2!.copyWith(
                color: kAccentColor.withOpacity(0.5),
                fontWeight: kFontWeightLight,
              ),
              textAlign: kTextAlignLeft,
            ),
            // TODO: Add changes
            Text(
              changes!,
              style: kThioAlli.textTheme.bodyText2!.copyWith(
                color: kAccentColor.withOpacity(0.5),
                fontWeight: kFontWeightLight,
              ),
              textAlign: kTextAlignLeft,
            ),
          ],
        ),
      ),
    );
  }
}
