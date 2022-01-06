import 'package:flutter/material.dart';
import '../../../app/widgets/custom_padding.dart';
import '../../../app/route/route.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, Routes.signUp);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: kPaddingAllMedium,
          width: MediaQuery.of(context).size.width / 3,
          child: const Image(
            image: AssetImage('assets/images/png/img_logo.png'),
          ),
        ),
      ),
    );
  }
}
