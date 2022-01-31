import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/routes/route.dart';

import 'view/home/home_screen.dart';
import 'view/info/info_screen.dart';
import 'view/intro/intro_screen.dart';
import 'view/splash/splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.home,
      routes: {
        Routes.splash: (_) => const SplashScreen(),
        Routes.intro: (_) => const IntroScreen(),
        Routes.info: (_) => const InfoScreen(),
        Routes.home: (_) => const HomeScreen(),
      },
    );
  }
}
