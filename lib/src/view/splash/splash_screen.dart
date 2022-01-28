import 'package:flutter/material.dart';

import '../../app/themes/theme.dart';

import '../../app/widgets/custom_padding.dart';

part './widgets/splash_body.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashBody(),
    );
  }
}
