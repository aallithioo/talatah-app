import 'package:flutter/material.dart';

import '../../../../app/themes/font_size.dart';
import '../../../../app/routes/route.dart';
import '../../../../app/themes/theme.dart';
import '../../../../app/themes/color.dart';
import '../../../../app/themes/font_weight.dart';
import '../../../../app/themes/text_align.dart';
import '../../../../app/widgets/border.dart';
import '../../../../app/widgets/padding.dart';
import '../../../../app/widgets/sizebox.dart';
import '../../../../app/widgets/custom_appbar.dart';

part './widgets/about_body.dart';
part './widgets/about_content.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: kAppBar('talatah'),
      body: const AboutBody(),
    );
  }
}
