part of '../info_screen.dart';

class InfoBody extends StatelessWidget {
  const InfoBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> releaseNotesData = [
      {
        'version': 'v1.0.1',
        'description': 'Welcome to talatah',
        'changes': '\n- Added a new feature\n- Fixed a bug',
      },
      {
        'version': 'v1.0.0',
        'description': 'Welcome to talatah',
        'changes': '\nHi, There!\n\nThis is the first release of the app.\n'
            'It is a work in progress.\n'
            'I hope you enjoy it.\n'
            'If you have any suggestions, please let me know.\n\n'
            'Thanks!\n\n'
            '- THIO ALLI\n',
      },
    ];
    return SafeArea(
      child: Padding(
        padding: kPaddingSymetricHorizontalLarge,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Release Notes',
              style: kThioAlli.textTheme.headline5!.copyWith(
                color: kAccentColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            kSizeBoxVerticalSmall,
            ListView.builder(
              itemCount: releaseNotesData.length,
              itemBuilder: (BuildContext context, int index) => InfoContent(
                version: releaseNotesData[index]['version'],
                description: releaseNotesData[index]['description'],
                changes: releaseNotesData[index]['changes'],
              ),
              physics: const ScrollPhysics(),
              shrinkWrap: true,
            ),
            const Spacer(),
            Positioned.fill(
              bottom: 0,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(bottom: kSizeMedium),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: kTransparentColor,
                      border: Border.all(
                        color: kAccentColor,
                        width: 2,
                      ),
                      borderRadius: kBorderRadiusTiny,
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, Routes.home);
                      },
                      child: Text(
                        'Continue'.toUpperCase(),
                        style: kThioAlli.textTheme.button!.copyWith(
                          color: kAccentColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
