import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'src/view/controller/screen/controller_screen.dart';
import 'src/view/profile/screen/profile_screen.dart';
import 'src/view/about/screen/about_screen.dart';
import 'src/view/contact/screen/contact_screen.dart';
import 'src/view/privacy/screen/privacy_screen.dart';
import 'src/view/profile/setting/screen/profile_setting.dart';
import 'src/view/sign_in/forgot/auth/screen/forgot_password_auth_screen.dart';
import 'src/view/sign_in/forgot/reset/screen/forgot_password_reset_screen.dart';
import 'src/view/sign_in/forgot/screen/forgot_password.dart';
import 'src/view/sign_in/screen/sign_in_screen.dart';
import 'src/view/sign_up/auth/screen/sign_up_auth_screen.dart';
import 'src/view/sign_up/success/screen/sign_up_success_screen.dart';
import 'src/view/splash/screen/splash_screen.dart';
import 'src/app/cubit/auth_cubit.dart';
import 'src/app/theme/theme.dart';
import 'src/app/route/route.dart';
import 'src/view/sign_up/screen/sign_up_screen.dart';
import 'src/view/terms/screen/terms.dart';

void main() async {
  // Initialize Firebase
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        BlocProvider(
          create: (_) => AuthCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Talatah',
        theme: talatah,
        initialRoute: Routes.splash,
        routes: <String, WidgetBuilder>{
          Routes.splash: (_) => const SplashScreen(),
          Routes.signIn: (_) => const SignInScreen(),
          Routes.forgot: (_) => const ForgotPasswordScreen(),
          Routes.forgotAuth: (_) => const ForgotPasswordAuthScreen(),
          Routes.forgotReset: (_) => const ForgotPasswordResetScreen(),
          Routes.signUp: (_) => const SignUpScreen(),
          Routes.signUpAuth: (_) => const SignUpAuthScreen(),
          Routes.signUpSuccess: (_) => const SignUpSuccessScreen(),
          Routes.about: (_) => const AboutScreen(),
          Routes.profile: (_) => const ProfileScreen(),
          Routes.profileSetting: (_) => const ProfileSettingScreen(),
          Routes.privacy: (_) => const PrivacyScreen(),
          Routes.terms: (_) => const TermsScreen(),
          Routes.contact: (_) => const ContactScreen(),
          Routes.controller: (_) => const ControllerScreen(),
        },
      ),
    );
  }
}
