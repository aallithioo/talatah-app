part of '../about_screen.dart';

class AboutContent extends StatelessWidget {
  const AboutContent({Key? key, this.name, this.title, this.imageURL})
      : super(key: key);

  final String? name, title, imageURL;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: kBorderRadiusHuge,
          child: Image.asset(
            imageURL!,
            fit: BoxFit.cover,
            width: 200,
            height: 200,
          ),
        ),
        kSizeBoxVerticalSmall,
        Text(
          name!,
          style: kThioAlli.textTheme.headline6!.copyWith(
            color: kAccentColor,
            fontWeight: kFontWeightBold,
          ),
        ),
        kSizeBoxVerticalTiny,
        Text(
          title!,
          style: kThioAlli.textTheme.bodyText1!.copyWith(
            color: kAccentColor.withOpacity(0.5),
            fontWeight: kFontWeightLight,
          ),
        ),
      ],
    );
  }
}
