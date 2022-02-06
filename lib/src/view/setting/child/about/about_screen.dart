import 'package:flutter/material.dart';
import 'package:talatah/src/app/routes/route.dart';
import 'package:talatah/src/app/themes/size.dart';
import 'package:talatah/src/app/themes/textalign.dart';

import '../../../../app/themes/fontweight.dart';
import '../../../../app/themes/theme.dart';
import '../../../../app/themes/color.dart';
import '../../../../app/widgets/custom_border.dart';
import '../../../../app/widgets/custom_sizebox.dart';
import '../../../../app/widgets/custom_padding.dart';
import '../../../../app/widgets/custom_appbar.dart';

part './widgets/about_body.dart';
part './widgets/about_content.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: kAppBar('talatah'),
      body: const AboutBody(),
    );
  }
}
