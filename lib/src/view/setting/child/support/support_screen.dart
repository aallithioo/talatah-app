import 'package:flutter/material.dart';

import '../../../../app/themes/font_weight.dart';
import '../../../../app/themes/theme.dart';
import '../../../../app/widgets/border.dart';
import '../../../../app/widgets/custom_appbar.dart';
import '../../../../app/widgets/padding.dart';
import '../../../../app/themes/color.dart';

part './widgets/support_body.dart';
part './widgets/support_content.dart';

class SupportScreen extends StatelessWidget {
  const SupportScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: kAppBar('Support'),
      body: const SupportBody(),
    );
  }
}
