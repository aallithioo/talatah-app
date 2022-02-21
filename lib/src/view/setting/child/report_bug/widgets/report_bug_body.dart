part of '../report_bug_screen.dart';

class ReportBugBody extends StatelessWidget {
  const ReportBugBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: SetPadding.symetricHorizontalMedium,
        child: const ReportBugContent(),
      ),
    );
  }
}
