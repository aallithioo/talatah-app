part of '../info_screen.dart';

class InfoBody extends StatelessWidget {
  const InfoBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> releaseNotesData = [
      {
        'title': 'Welcome to talatah',
        'description': 'Welcome to the app',
        'changes': '',
      },
      {
        'title': 'Open-Source Program',
        'description': 'Welcome to the app',
        'changes': '',
      },
      {
        'title': 'Privacy is our concern',
        'description': 'Welcome to the app',
        'changes': '',
      },
    ];
    return SafeArea(
      child: Padding(
        padding: kPaddingSymetricHorizontalLarge,
        child: Column(
          children: [
            ...List.generate(
              releaseNotesData.length,
              (index) => InfoContent(
                title: releaseNotesData[index]['title'],
                description: releaseNotesData[index]['description'],
                changes: releaseNotesData[index]['changes'],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
