import 'package:flutter/material.dart';

import '../../../../app/themes/font_size.dart';
import '../../../../app/themes/font_weight.dart';
import '../../../../app/themes/size.dart';
import '../../../../app/themes/theme.dart';
import '../../../../app/widgets/border.dart';
import '../../../../app/widgets/custom_appbar.dart';
import '../../../../app/widgets/padding.dart';
import '../../../../app/themes/color.dart';
import '../../../../app/widgets/sizebox.dart';

part './widgets/theme_body.dart';
part './widgets/theme_content.dart';

class ThemeScreen extends StatelessWidget {
  const ThemeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: kAppBar('Theme'),
      body: const ThemeBody(),
    );
  }
}
