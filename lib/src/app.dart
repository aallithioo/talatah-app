import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/themes/theme.dart';
import 'app/routes/route.dart';

import 'view/home/home_screen.dart';
import 'view/info/info_screen.dart';
import 'view/intro/intro_screen.dart';
import 'view/setting/child/hall_of_fame/hall_of_fame_screen.dart';
import 'view/setting/child/privacy_policy/privacy_policy_screen.dart';
import 'view/setting/child/release_notes/release_notes_screen.dart';
import 'view/setting/child/report_bug/report_bug_screen.dart';
import 'view/setting/child/support/support_screen.dart';
import 'view/setting/child/terms/terms_screen.dart';
import 'view/setting/child/theme/theme_screen.dart';
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
        Routes.splash: (context) => const SplashScreen(),
        Routes.intro: (context) => const IntroScreen(),
        Routes.home: (context) => const HomeScreen(),
        Routes.info: (context) => const InfoScreen(),
        Routes.setting: (context) => const SettingScreen(),
        Routes.releaseNotes: (context) => const ReleaseNotesScreen(),
        Routes.theme: (context) => const ThemeScreen(),
        Routes.about: (context) => const AboutScreen(),
        Routes.hallOfFame: (context) => const HallOfFameScreen(),
        Routes.privacyPolicy: (context) => const PrivacyPolicyScreen(),
        Routes.termsOfService: (context) => const TermsScreen(),
        Routes.support: (context) => const SupportScreen(),
        Routes.reportBug: (context) => const ReportBugScreen(),
      },
    );
  }
}
