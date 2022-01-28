import 'package:aallithioo/src/app/routes/route.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Routes.splash,
      routes: {
        // Routes.intro: (context) => IntroScreens(),
      },
    );
  }
}
