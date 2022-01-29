part of '../info_screen.dart';

class InfoContent extends StatelessWidget {
  const InfoContent({
    Key? key,
    this.title,
    this.description,
    this.changes,
  }) : super(key: key);

  final String? title, description, changes;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        kSizeBoxVerticalLarge,
        // TODO: Add title
        Text(
          title!,
          style: kThioAlli.textTheme.headline6!.copyWith(
            color: kAccentColor,
            fontWeight: kFontWeightSemiBold,
          ),
          textAlign: kTextAlignLeft,
        ),
        kSizeBoxVerticalTiny,
        // TODO: Add descriptions
        Text(
          description!,
          style: kThioAlli.textTheme.bodyText1!.copyWith(
            color: kAccentColor.withOpacity(0.5),
            fontWeight: kFontWeightLight,
          ),
          textAlign: kTextAlignLeft,
        ),
        // TODO: Add changes
        Text(
          changes!,
          style: kThioAlli.textTheme.bodyText1!.copyWith(
            color: kAccentColor.withOpacity(0.5),
            fontWeight: kFontWeightLight,
          ),
          textAlign: kTextAlignLeft,
        ),
      ],
    );
  }
}
