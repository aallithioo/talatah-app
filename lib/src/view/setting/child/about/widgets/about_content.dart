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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(),
          ClipRRect(
            borderRadius: SetBorder.radiusAllMedium,
            child: Image.asset(
              aboutData[0]['imageURL'],
              fit: BoxFit.cover,
              width: 150,
              height: 150,
            ),
          ),
          SetSizeBox.verticalSmall,
          Text(
            aboutData[0]['name'].toUpperCase(),
            style: kThioAlli.textTheme.headline6!.copyWith(
              color: SetColor.accent,
              fontWeight: SetFontWeight.bold,
            ),
          ),
          Text(
            aboutData[0]['title'].toUpperCase(),
            style: kThioAlli.textTheme.bodyText1!.copyWith(
              color: SetColor.accent.withOpacity(0.5),
              fontWeight: SetFontWeight.light,
            ),
          ),
          SetSizeBox.verticalMedium,
          Padding(
            padding: SetPadding.symetricHorizontalMedium,
            child: Text(
              aboutData[0]['description'],
              style: kThioAlli.textTheme.bodyText2!.copyWith(
                color: SetColor.accent.withOpacity(0.5),
                fontSize: SetFontSize.small / 1.3,
                fontWeight: SetFontWeight.light,
              ),
              textAlign: SetTextAlign.center,
            ),
          ),
          const Spacer(),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: SetPadding.symetricHorizontalMedium,
              child: Padding(
                padding: SetPadding.onlyBottomMedium,
                child: Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    color: SetColor.primary,
                    border: Border.all(
                      color: SetColor.accent,
                    ),
                    borderRadius: SetBorder.radiusAllTiny,
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(
                        context,
                        Routes.setting,
                      );
                    },
                    child: Text(
                      'Back'.toUpperCase(),
                      style: kThioAlli.textTheme.button!.copyWith(
                        color: SetColor.accent,
                        fontWeight: SetFontWeight.light,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
