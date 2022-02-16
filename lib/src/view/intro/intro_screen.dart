import 'package:flutter/material.dart';
import 'package:talatah/src/app/themes/color.dart';
import 'package:talatah/src/app/themes/font_weight.dart';
import 'package:talatah/src/app/themes/text_align.dart';
import 'package:talatah/src/app/widgets/border.dart';
import 'package:talatah/src/app/widgets/margin.dart';
import 'package:talatah/src/app/widgets/padding.dart';
import 'package:talatah/src/app/widgets/sizebox.dart';

import '../../app/routes/route.dart';
import '../../app/themes/size.dart';
import '../../app/themes/theme.dart';

part './widgets/intro_body.dart';
part './widgets/intro_content.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: IntroBody(),
    );
  }
}
