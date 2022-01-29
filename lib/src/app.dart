import 'package:flutter/material.dart';

import 'app/routes/route.dart';

import 'view/info/info_screen.dart';
import 'view/intro/intro_screen.dart';
import 'view/splash/splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.info,
      routes: {
        Routes.splash: (_) => const SplashScreen(),
        Routes.intro: (_) => const IntroScreen(),
        Routes.info: (_) => const InfoScreen(),
      },
    );
  }
}
