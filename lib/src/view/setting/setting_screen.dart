import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../app/routes/route.dart';
import '../../app/themes/size.dart';
import '../../app/themes/theme.dart';
import '../../app/widgets/custom_appbar.dart';
import '../../app/widgets/custom_border.dart';
import '../../app/widgets/custom_divider.dart';
import '../../app/widgets/custom_margin.dart';
import '../../app/widgets/custom_sizebox.dart';
import '../../app/widgets/custom_padding.dart';
import '../../app/widgets/custom_bottom_nav_bar.dart';
import '../../app/enums.dart';
import '../../app/themes/color.dart';

part './widgets/setting_body.dart';
part './widgets/setting_content.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: kAppBar('talatah'),
      body: const SettingBody(),
      bottomNavigationBar:
          const CustomBottomNavBar(selectedMenu: MenuState.setting),
    );
  }
}
