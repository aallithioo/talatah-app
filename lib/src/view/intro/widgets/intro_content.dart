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
        Image.asset(imageURL!),
        SetSizeBox.verticalSmall,
        Text(
          title!.toUpperCase(),
          style: kThioAlli.textTheme.headline5!.copyWith(
            color: SetColor.accent,
            fontWeight: SetFontWeight.bold,
          ),
          textAlign: SetTextAlign.center,
        ),
        SetSizeBox.verticalTiny,
        Text(
          description!,
          style: kThioAlli.textTheme.bodyText1!.copyWith(
            color: SetColor.accent.withOpacity(0.5),
            fontWeight: SetFontWeight.light,
          ),
          textAlign: SetTextAlign.center,
        ),
      ],
    );
  }
}
