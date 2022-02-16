part of '../info_screen.dart';

class InfoBody extends StatelessWidget {
  const InfoBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> releaseNotesData = [
      {
        'version': 'v1.0.0+b.3',
        'description': 'Rebuild',
        'changes': '\n- New UI design',
      },
      {
        'version': 'v1.0.0+b.2',
        'description': 'Restructure',
        'changes': '\n- Added a new feature\n- Fixed a bug',
      },
      {
        'version': 'v1.0.0+b.1',
        'description': 'Welcome to talatah',
        'changes': '\nHi, There!\n\nThis is the first release of the app.\n'
            'It is a work in progress.\n'
            'I hope you enjoy it.\n'
            'If you have any suggestions, please let me know.\n\n'
            'Thanks!\n\n'
            '- THIO ALLI',
      },
    ];
    return SafeArea(
      child: Padding(
        padding: SetPadding.symetricHorizontalMedium,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SetSizeBox.verticalMedium,
            Text(
              'Release Notes'.toUpperCase(),
              style: kThioAlli.textTheme.headline5!.copyWith(
                color: SetColor.accent,
                fontWeight: FontWeight.bold,
              ),
            ),
            SetSizeBox.verticalTiny,
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: ListView.builder(
                itemCount: releaseNotesData.length,
                itemBuilder: (BuildContext context, int index) => InfoContent(
                  version: releaseNotesData[index]['version'],
                  description: releaseNotesData[index]['description'],
                  changes: releaseNotesData[index]['changes'],
                ),
                physics: const ScrollPhysics(),
                shrinkWrap: true,
              ),
            ),
            const Spacer(),
            Padding(
              padding: SetPadding.onlyBottomMedium,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: SetColor.transparent,
                    border: Border.all(
                      color: SetColor.accent,
                      width: 2,
                    ),
                    borderRadius: SetBorder.radiusAllTiny,
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(
                        context,
                        Routes.home,
                      );
                    },
                    child: Text(
                      'Continue'.toUpperCase(),
                      style: kThioAlli.textTheme.button!.copyWith(
                        color: SetColor.accent,
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
