import 'package:flutter/material.dart';

import '../../../../../../app/themes/size.dart';
import '../../../../../../app/themes/color.dart';
import '../../../../../../app/themes/text_align.dart';
import '../../../../../../app/themes/theme.dart';
import '../../../../../../app/widgets/margin.dart';
import '../../../../../../app/widgets/border.dart';
import '../../../../../../app/widgets/padding.dart';
import '../../../../../../app/widgets/sizebox.dart';

part './widgets/donators_body.dart';
part './widgets/donators_content.dart';

class DonatorsScreen extends StatelessWidget {
  const DonatorsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: DonatorsBody(),
      ),
    );
  }
}
