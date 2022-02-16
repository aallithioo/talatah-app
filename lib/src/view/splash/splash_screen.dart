import 'package:flutter/material.dart';
import 'package:talatah/src/app/themes/font_weight.dart';
import 'package:talatah/src/app/themes/size.dart';
import 'package:talatah/src/app/widgets/padding.dart';

import '../../app/routes/route.dart';
import '../../app/themes/color.dart';
import '../../app/themes/theme.dart';

part './widgets/splash_body.dart';
part './widgets/splash_content.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, Routes.intro);
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashBody(),
    );
  }
}
