import 'package:flutter/material.dart';

import '../../app/enums.dart';
import '../../app/routes/route.dart';
import '../../app/themes/color.dart';
import '../../app/themes/theme.dart';
import '../../app/widgets/custom_appbar.dart';
import '../../app/widgets/custom_bottom_nav_bar.dart';
import '../../app/widgets/border.dart';
import '../../app/widgets/divider.dart';
import '../../app/widgets/padding.dart';
import '../../app/widgets/sizebox.dart';

part './widgets/setting_body.dart';
part './widgets/setting_content.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: kAppBar('Setting'),
      body: const SettingBody(),
      bottomNavigationBar:
          const CustomBottomNavBar(selectedMenu: MenuState.setting),
    );
  }
}
