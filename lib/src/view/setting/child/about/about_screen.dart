import 'package:flutter/material.dart';

import '../../../../app/themes/color.dart';
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
