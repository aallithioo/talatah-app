import 'package:flutter/material.dart';

import '../../../../app/themes/font_weight.dart';
import '../../../../app/themes/theme.dart';
import '../../../../app/widgets/border.dart';
import '../../../../app/widgets/custom_appbar.dart';
import '../../../../app/widgets/padding.dart';
import '../../../../app/themes/color.dart';

part './widgets/about_body.dart';
part './widgets/about_content.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: kAppBar('About'),
      body: const AboutBody(),
    );
  }
}
