import 'package:flutter/material.dart';

import '../../../../app/themes/text_align.dart';
import '../../../../app/themes/font_weight.dart';
import '../../../../app/themes/theme.dart';
import '../../../../app/themes/color.dart';
import '../../../../app/widgets/custom_snackbar.dart';
import '../../../../app/widgets/sizebox.dart';
import '../../../../app/widgets/border.dart';
import '../../../../app/widgets/custom_appbar.dart';
import '../../../../app/widgets/padding.dart';

part './widgets/report_bug_body.dart';
part './widgets/report_bug_content.dart';

class ReportBugScreen extends StatelessWidget {
  const ReportBugScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: kAppBar('Report Bug'),
      body: const ReportBugBody(),
    );
  }
}
