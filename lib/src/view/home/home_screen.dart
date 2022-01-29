import 'package:aallithioo/src/app/enums.dart';
import 'package:aallithioo/src/app/routes/route.dart';
import 'package:aallithioo/src/app/widgets/custom_appbar.dart';
import 'package:aallithioo/src/app/widgets/custom_bottom_nav_bar.dart';
import 'package:flutter/material.dart';

part './widgets/home_body.dart';

class HomeScren extends StatelessWidget {
  const HomeScren({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: kAppBar('talatah'),
      body: const HomeBody(),
      bottomNavigationBar:
          const CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
