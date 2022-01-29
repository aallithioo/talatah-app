part of '../info_screen.dart';

class InfoBody extends StatelessWidget {
  const InfoBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> releaseNotesData = [
      {
        'version': 'v1.0.2',
        'description': 'FIX : Overflow error',
        'changes': '\n- Fixed overflow error',
      },
      {
        'version': 'v1.0.1',
        'description': 'Add new theme feature',
        'changes': '\n- Available new themes',
      },
      {
        'version': 'v1.0.0',
        'description': 'First release',
        'changes': '\n- Hi, There!',
      },
    ];
    return SafeArea(
      child: Padding(
        padding: kPaddingSymetricHorizontalLarge,
        child: ListView.builder(
          itemCount: releaseNotesData.length,
          itemBuilder: (BuildContext context, int index) => InfoContent(
            version: releaseNotesData[index]['version'],
            description: releaseNotesData[index]['description'],
            changes: releaseNotesData[index]['changes'],
          ),
        ),
      ),
    );
  }
}