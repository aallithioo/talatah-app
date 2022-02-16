import 'package:flutter/material.dart';

import '../../app/themes/color.dart';
import '../../app/themes/font_weight.dart';
import '../../app/themes/text_align.dart';
import '../../app/widgets/border.dart';
import '../../app/widgets/margin.dart';
import '../../app/widgets/padding.dart';
import '../../app/widgets/sizebox.dart';
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
