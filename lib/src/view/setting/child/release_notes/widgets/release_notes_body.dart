part of '../release_notes_screen.dart';

class ReleaseNotesBody extends StatelessWidget {
  const ReleaseNotesBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: SetPadding.symetricHorizontalMedium,
        child: const ReleaseNotesContent(),
      ),
    );
  }
}
