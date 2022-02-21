part of '../bug_hunter_screen.dart';

class BugHunterBody extends StatelessWidget {
  const BugHunterBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: SetPadding.symetricHorizontalMedium,
          child: const BugHunterContent(),
        ),
      ),
    );
  }
}
