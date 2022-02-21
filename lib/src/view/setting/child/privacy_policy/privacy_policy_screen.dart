import 'package:flutter/material.dart';

import '../../../../app/themes/font_weight.dart';
import '../../../../app/themes/theme.dart';
import '../../../../app/widgets/border.dart';
import '../../../../app/widgets/custom_appbar.dart';
import '../../../../app/widgets/padding.dart';
import '../../../../app/themes/color.dart';

part './widgets/privacy_policy_body.dart';
part './widgets/privacy_policy_content.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: kAppBar('Privacy Policy'),
      body: const PrivacyPolicyBody(),
    );
  }
}
