import 'package:aallithioo/src/app/widgets/custom_border.dart';
import 'package:aallithioo/src/app/widgets/custom_margin.dart';
import 'package:flutter/material.dart';

import '../../app/themes/color.dart';
import '../../app/themes/fontweight.dart';
import '../../app/themes/textalign.dart';
import '../../app/themes/theme.dart';
import '../../app/widgets/custom_padding.dart';
import '../../app/widgets/custom_sizebox.dart';

part 'widgets/info_body.dart';
part 'widgets/info_content.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: const InfoBody(),
    );
  }
}
