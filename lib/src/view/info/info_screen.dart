import 'package:flutter/material.dart';

import '../../app/routes/route.dart';
import '../../app/themes/theme.dart';
import '../../app/themes/color.dart';
import '../../app/themes/font_weight.dart';
import '../../app/themes/text_align.dart';
import '../../app/widgets/sizebox.dart';
import '../../app/widgets/border.dart';
import '../../app/widgets/margin.dart';
import '../../app/widgets/padding.dart';
import '../../app/widgets/custom_appbar.dart';

part 'widgets/info_body.dart';
part 'widgets/info_content.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: kAppBar('talatah'),
      body: const InfoBody(),
    );
  }
}
