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
      margin: SetMargin.symetricVerticalTiny,
      padding: SetPadding.symetricHorizontalMedium / 1.5,
      decoration: BoxDecoration(
        color: SetColor.secondary,
        borderRadius: SetBorder.radiusAllSmall,
      ),
      child: Container(
        margin: SetMargin.symetricVerticalMedium / 1.5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // kSizeBoxVerticalLarge,
            Text(
              version!,
              style: kThioAlli.textTheme.headline6!.copyWith(
                color: SetColor.accent,
                fontWeight: SetFontWeight.semibold,
              ),
              textAlign: SetTextAlign.left,
            ),
            SetSizeBox.verticalSmall,
            Text(
              description!,
              style: kThioAlli.textTheme.bodyText2!.copyWith(
                color: SetColor.accent.withOpacity(0.5),
                fontWeight: SetFontWeight.light,
              ),
              textAlign: SetTextAlign.left,
            ),
            Text(
              changes!,
              style: kThioAlli.textTheme.bodyText2!.copyWith(
                color: SetColor.accent.withOpacity(0.5),
                fontWeight: SetFontWeight.light,
              ),
              textAlign: SetTextAlign.left,
            ),
          ],
        ),
      ),
    );
  }
}
