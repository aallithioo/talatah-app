import 'package:flutter/material.dart';

import '../../../../../../app/themes/size.dart';
import '../../../../../../app/themes/color.dart';
import '../../../../../../app/themes/text_align.dart';
import '../../../../../../app/themes/theme.dart';
import '../../../../../../app/widgets/margin.dart';
import '../../../../../../app/widgets/sizebox.dart';
import '../../../../../../app/widgets/border.dart';
import '../../../../../../app/widgets/padding.dart';

part './widgets/bug_hunter_body.dart';
part './widgets/bug_hunter_content.dart';

class BugHunterScreen extends StatelessWidget {
  const BugHunterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: BugHunterBody(),
      ),
    );
  }
}
