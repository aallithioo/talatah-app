import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../../../app/route/route.dart';
import '../../../app/theme/color.dart';
import '../../../app/theme/size.dart';
import '../../../app/theme/theme.dart';
import '../../../app/widgets/custom_blur.dart';
import '../../../app/widgets/custom_border.dart';
import '../../../app/widgets/custom_padding.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool isObscured = true;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: kPaddingAllLarge,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Greeting
                  Column(
                    children: [
                      // Logo
                      Container(
                        margin: kPaddingAllMedium,
                        height: 128,
                        width: 128,
                        child: Image.asset('assets/images/png/img_logo.png'),
                      ),
                      // Description title
                      Container(
                        margin: EdgeInsets.fromLTRB(0, kSizeTiny, 0, 0),
                        child: Text(
                          'Welcome back!',
                          style: talatah.textTheme.headline5!.copyWith(
                            color: kGreyColorShade900,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      // Description subtitle
                      Container(
                        margin:
                            EdgeInsets.fromLTRB(0, kSizeSmall, 0, kSizeLarge),
                        padding: kPaddingSymetricHorizontalMedium,
                        child: Text(
                          'Please type your email and password to sign in.',
                          style: talatah.textTheme.bodyText1!.copyWith(),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                  // Sign in with third party
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Sign in with Google
                      Container(
                        width: MediaQuery.of(context).size.width / 2.5,
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: kBorderRadiusSmall,
                          color: kWhiteColorShade900,
                          boxShadow: [
                            BoxShadow(
                              color: kWhiteColorShade800,
                              blurRadius: kBlurRadiusHuge,
                              offset: const Offset(0, 5),
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: kPaddingAllMedium,
                          child: TextButton(
                            onPressed: () async {
                              final GoogleSignInAccount? googleUser =
                                  await GoogleSignIn().signIn();

                              final GoogleSignInAuthentication? googleAuth =
                                  await googleUser?.authentication;

                              final credential = GoogleAuthProvider.credential(
                                accessToken: googleAuth?.accessToken,
                                idToken: googleAuth?.idToken,
                              );

                              FirebaseAuth.instance
                                  .signInWithCredential(credential);
                            },
                            child: Image.asset(
                                'assets/images/png/img_google_logo.png'),
                          ),
                        ),
                      ),
                      // Sign in with Apple
                      Container(
                        width: MediaQuery.of(context).size.width / 2.5,
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: kBorderRadiusSmall,
                          color: kWhiteColorShade900,
                          boxShadow: [
                            BoxShadow(
                              color: kWhiteColorShade800,
                              blurRadius: kBlurRadiusHuge,
                              offset: const Offset(0, 5),
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: kPaddingAllMedium,
                          child: Image.asset(
                              'assets/images/png/img_apple_logo.png'),
                        ),
                      ),
                    ],
                  ),
                  // Sign in with email
                  Column(
                    children: [
                      // Email Input
                      Container(
                        margin: EdgeInsets.fromLTRB(0, kSizeSmall, 0, 0),
                        width: MediaQuery.of(context).size.width,
                        child: TextFormField(
                          controller: emailController,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: kWhiteColorShade900,
                            hintText: 'Email Address',
                            hintStyle: talatah.textTheme.bodyText1!.copyWith(
                              color: kGreyColorShade300,
                              fontWeight: FontWeight.w300,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: kBorderRadiusSmall,
                              borderSide: BorderSide.none,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: kBorderRadiusSmall,
                              borderSide: BorderSide(
                                color: kBlueColorShade500,
                              ),
                            ),
                            prefixIcon: Icon(
                              Icons.email_rounded,
                              color: kGreyColorShade400,
                            ),
                          ),
                          cursorColor: kBlueColorShade500,
                        ),
                      ),
                      // Password Input
                      Container(
                        margin: EdgeInsets.fromLTRB(0, kSizeSmall, 0, 0),
                        width: MediaQuery.of(context).size.width,
                        child: TextFormField(
                          obscureText: isObscured,
                          obscuringCharacter: '•',
                          controller: passwordController,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: kWhiteColorShade900,
                            hintText: 'Password',
                            hintStyle: talatah.textTheme.bodyText1!.copyWith(
                              color: kGreyColorShade300,
                              fontWeight: FontWeight.w300,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: kBorderRadiusSmall,
                              borderSide: BorderSide.none,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: kBorderRadiusSmall,
                              borderSide: BorderSide(
                                color: kBlueColorShade500,
                              ),
                            ),
                            prefixIcon: Icon(
                              Icons.vpn_key_rounded,
                              color: kGreyColorShade400,
                            ),
                            suffixIcon: IconButton(
                              color: kGreyColorShade400,
                              icon: Icon(
                                isObscured
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                              ),
                              onPressed: () {
                                setState(
                                  () {
                                    isObscured = !isObscured;
                                  },
                                );
                              },
                            ),
                          ),
                          cursorColor: kBlueColorShade500,
                        ),
                      ),
                    ],
                  ),
                  // Sign in button
                  Container(
                    margin: EdgeInsets.fromLTRB(0, kSizeSmall, 0, 0),
                    width: MediaQuery.of(context).size.width,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: kBorderRadiusSmall,
                      color: kBlueColorShade400,
                      boxShadow: [
                        BoxShadow(
                          color: kWhiteColorShade800,
                          blurRadius: kBlurRadiusHuge,
                          offset: const Offset(0, 5),
                        ),
                      ],
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Let\'s Go',
                        style: talatah.textTheme.button!.copyWith(
                          color: kWhiteColorShade900,
                        ),
                      ),
                    ),
                  ),
                  // Option to create an account or forgot password
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Forgot password
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Forgot Password?',
                          style: talatah.textTheme.button!.copyWith(
                            color: kBlueColorShade500,
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                      // Sign up
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(
                              context, Routes.signUp);
                        },
                        child: Text(
                          'Create Account',
                          style: talatah.textTheme.button!.copyWith(
                            color: kBlueColorShade500,
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
