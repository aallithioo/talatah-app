import 'package:flutter/material.dart';
import 'package:talatah/src/app/themes/color.dart';
import 'package:talatah/src/app/themes/font_weight.dart';
import 'package:talatah/src/app/themes/size.dart';
import 'package:talatah/src/app/themes/text_align.dart';
import 'package:talatah/src/app/widgets/border.dart';
import 'package:talatah/src/app/widgets/padding.dart';
import 'package:talatah/src/app/widgets/sizebox.dart';

import '../../../../app/routes/route.dart';

import '../../../../app/themes/theme.dart';
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
