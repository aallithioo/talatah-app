part of '../intro_screen.dart';

class IntroContent extends StatelessWidget {
  const IntroContent({
    Key? key,
    this.title,
    this.description,
    this.imageURL,
  }) : super(key: key);

  final String? title, description, imageURL;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        // TODO: Add images
        Image.asset(imageURL!),
        kSizeBoxVerticalLarge,
        // TODO: Add title
        Text(
          title!,
          style: kThioAlli.textTheme.headline6!.copyWith(
            color: kAccentColor,
            fontWeight: kFontWeightSemiBold,
          ),
          textAlign: kTextAlignCenter,
        ),
        kSizeBoxVerticalTiny,
        // TODO: Add descriptions
        Text(
          description!,
          style: kThioAlli.textTheme.bodyText1!.copyWith(
            color: kAccentColor.withOpacity(0.5),
            fontWeight: kFontWeightLight,
          ),
          textAlign: kTextAlignCenter,
        ),
      ],
    );
  }
}
