import 'package:flutter/material.dart';

import '../../app/widgets/custom_padding.dart';
import '../../app/enums.dart';
import '../../app/themes/color.dart';
import '../../app/widgets/custom_bottom_nav_bar.dart';

part './widgets/setting_body.dart';
part './widgets/setting_content.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SettingBody(),
      bottomNavigationBar:
          const CustomBottomNavBar(selectedMenu: MenuState.setting),
    );
  }
}
