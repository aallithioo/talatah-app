import 'package:flutter/material.dart';

import '../../app/themes/color.dart';
import '../../app/themes/size.dart';
import '../../app/themes/textalign.dart';
import '../../app/themes/theme.dart';
import '../../app/widgets/custom_border.dart';
import '../../app/widgets/custom_padding.dart';

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
