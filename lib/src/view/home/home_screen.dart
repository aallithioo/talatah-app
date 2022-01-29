import 'package:aallithioo/src/app/enums.dart';
import 'package:aallithioo/src/app/routes/route.dart';
import 'package:aallithioo/src/app/themes/color.dart';
import 'package:aallithioo/src/app/widgets/custom_appbar.dart';
import 'package:aallithioo/src/app/widgets/custom_bottom_nav_bar.dart';
import 'package:flutter/material.dart';

part './widgets/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: kAppBar('talatah'),
      body: const HomeBody(),
      bottomNavigationBar: const CustomBottomNavBar(
        selectedMenu: MenuState.home,
      ),
    );
  }
}
