import 'package:aallithioo/src/app/routes/route.dart';
import 'package:flutter/material.dart';

import 'view/intro/intro_screen.dart';
import 'view/splash/splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Routes.intro,
      routes: {
        Routes.splash: (context) => const SplashScreen(),
        Routes.intro: (context) => const IntroScreen(),
      },
    );
  }
}
