import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/themes/theme.dart';
import 'app/routes/route.dart';

import 'view/home/home_screen.dart';
import 'view/info/info_screen.dart';
import 'view/intro/intro_screen.dart';
import 'view/setting/setting_screen.dart';
import 'view/splash/splash_screen.dart';
import 'view/setting/child/about/about_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: kThioAlli,
      initialRoute: Routes.splash,
      routes: {
        Routes.splash: (_) => const SplashScreen(),
        Routes.intro: (_) => const IntroScreen(),
        Routes.info: (_) => const InfoScreen(),
        Routes.home: (_) => const HomeScreen(),
        Routes.setting: (_) => const SettingScreen(),
        Routes.about: (_) => const AboutScreen(),
      },
    );
  }
}
