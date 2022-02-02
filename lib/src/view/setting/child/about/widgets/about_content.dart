part of '../about_screen.dart';

class AboutContent extends StatelessWidget {
  const AboutContent(
      {Key? key, this.name, this.description, this.title, this.imageURL})
      : super(key: key);

  final String? name, title, description, imageURL;

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> aboutData = [
      {
        'name': 'THIO ALLI',
        'title': 'Creator',
        'imageURL': 'assets/images/png/img_intro_1.png',
        'description': 'Hi, there!\n\n'
            'I am THIO ALLI, I am a man behind this app.\n'
            'I build this app to help people keep their credential safe that no one can knows their credential even the developer!\n\nAll OF DATA ARE STORED TO YOUR LOCAL STORAGE!\n\n'
            'Btw, this app is an open source project\n feel free to send me a feedback. Every support is appreciated!\n\n',
      },
    ];

    return Center(
      child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: kBorderRadiusMedium,
                child: Image.asset(
                  aboutData[0]['imageURL'],
                  fit: BoxFit.cover,
                  width: 150,
                  height: 150,
                ),
              ),
              kSizeBoxVerticalSmall,
              Text(
                aboutData[0]['name'].toUpperCase(),
                style: kThioAlli.textTheme.headline6!.copyWith(
                  color: kAccentColor,
                  fontSize: kSizeMedium,
                  fontWeight: kFontWeightBold,
                ),
              ),
              Text(
                aboutData[0]['title'].toUpperCase(),
                style: kThioAlli.textTheme.bodyText1!.copyWith(
                  color: kAccentColor.withOpacity(0.5),
                  fontSize: kSizeSmall,
                  fontWeight: kFontWeightLight,
                ),
              ),
              kSizeBoxVerticalLarge,
              Text(
                aboutData[0]['description'],
                style: kThioAlli.textTheme.bodyText1!.copyWith(
                  color: kAccentColor.withOpacity(0.5),
                  fontSize: kSizeSmall - 4,
                  fontWeight: kFontWeightLight,
                ),
                textAlign: kTextAlignCenter,
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: kSizeLarge),
              child: Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  border: Border.all(
                    color: kAccentColor,
                    width: 1,
                  ),
                  borderRadius: kBorderRadiusTiny,
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, Routes.setting);
                  },
                  child: Text(
                    'Back'.toUpperCase(),
                    style: kThioAlli.textTheme.button!.copyWith(
                      color: kAccentColor,
                      fontWeight: kFontWeightLight,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
