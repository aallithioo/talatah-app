import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../../../app/route/route.dart';
import '../../../app/widgets/custom_snackbar.dart';
import '../../../app/theme/color.dart';
import '../../../app/theme/size.dart';
import '../../../app/theme/theme.dart';
import '../../../app/widgets/custom_blur.dart';
import '../../../app/widgets/custom_border.dart';
import '../../../app/widgets/custom_padding.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

bool isObscured = true;
bool isChecked = false;
bool? isMatch;
double passwordStrength = 0.0;
String? passwordHint;
var requiredData = const Text(' *', style: TextStyle(color: Colors.red));
RegExp numberReg = RegExp(r'.*[0-9].*');
RegExp letterReg = RegExp(r'.*[A-Za-z].*');
final TextEditingController nameController = TextEditingController();
final TextEditingController emailController = TextEditingController();
final TextEditingController phoneController = TextEditingController();
final TextEditingController passwordController = TextEditingController();
final TextEditingController passwordConfirmController = TextEditingController();
late String password;
late String checkNameController = nameController.text.trim();
late String checkEmailController = emailController.text.trim();
late String checkPhoneController = phoneController.text.trim();
late String checkPasswordController = passwordController.text.trim();
late String checkPasswordConfirmController =
    passwordConfirmController.text.trim();

class _SignUpScreenState extends State<SignUpScreen> {
  // Form Validation
  Future err() async {
    if (nameController.text == "" || nameController.text.length >= 4) {
      if (numberReg.hasMatch(checkNameController)) {
        return ScaffoldMessenger.of(context)
            .showSnackBar(kSnackBar('Nama tidak boleh mengandung angka!')!);
      } else {
        return ScaffoldMessenger.of(context).showSnackBar(
            kSnackBar('Nama harus diisi dan minimal 5 karakter!')!);
      }
    } else if (emailController.text == "") {
      return ScaffoldMessenger.of(context)
          .showSnackBar(kSnackBar('Alamat email harus diisi!')!);
    } else if (phoneController.text == "") {
      if (letterReg.hasMatch(checkPhoneController)) {
        return ScaffoldMessenger.of(context)
            .showSnackBar(kSnackBar('Nomor tidak boleh mengandung huruf!')!);
      } else {
        return ScaffoldMessenger.of(context)
            .showSnackBar(kSnackBar('Nomor harus diisi!')!);
      }
    } else if (passwordController.text == "") {
      if (checkPasswordController.isEmpty) {
        return ScaffoldMessenger.of(context)
            .showSnackBar(kSnackBar('Kata sandi wajib diisi!')!);
      } else if (checkPasswordController.length <= 8) {
        return ScaffoldMessenger.of(context)
            .showSnackBar(kSnackBar('Kata sandi minimal 5 karakter!')!);
      } else if (numberReg.hasMatch(checkPasswordController)) {
        return ScaffoldMessenger.of(context)
            .showSnackBar(kSnackBar('Kata sandi harus mengandung angka!')!);
      } else if (letterReg.hasMatch(checkPasswordController)) {
        return ScaffoldMessenger.of(context)
            .showSnackBar(kSnackBar('Kata sandi harus mengandung huruf!')!);
      } else {
        return ScaffoldMessenger.of(context).showSnackBar(
            kSnackBar('Kata sandi harus mengandung angka dan huruf!')!);
      }
    } else if (passwordConfirmController.text == "" &&
        passwordConfirmController.text != passwordController.text) {
      return ScaffoldMessenger.of(context)
          .showSnackBar(kSnackBar('Kata sandi tidak boleh kosong!')!);
    } else {
      Navigator.pushNamed(context, '/signup/auth');
    }
  }

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
                          'Hi, There 👋',
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
                          'Please fullfill the form below to create your account',
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

                              if (credential.accessToken != null) {
                                Navigator.pushReplacementNamed(
                                    context, Routes.controller);
                              }
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
                      // Name Input
                      Container(
                        margin: EdgeInsets.fromLTRB(0, kSizeSmall, 0, 0),
                        width: MediaQuery.of(context).size.width,
                        child: TextFormField(
                          controller: nameController,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: kWhiteColorShade900,
                            hintText: 'Full Name',
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
                              Icons.person_rounded,
                              color: kGreyColorShade400,
                            ),
                          ),
                          cursorColor: kBlueColorShade500,
                        ),
                      ),
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
                          keyboardType: TextInputType.emailAddress,
                        ),
                      ),
                      // Phone Number Input
                      Container(
                        margin: EdgeInsets.fromLTRB(0, kSizeSmall, 0, 0),
                        width: MediaQuery.of(context).size.width,
                        child: TextFormField(
                          controller: phoneController,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: kWhiteColorShade900,
                            hintText: 'Phone Number',
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
                              Icons.phone_rounded,
                              color: kGreyColorShade400,
                            ),
                          ),
                          cursorColor: kBlueColorShade500,
                          keyboardType: TextInputType.phone,
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
                      // Password Input
                      Container(
                        margin: EdgeInsets.fromLTRB(0, kSizeSmall, 0, 0),
                        width: MediaQuery.of(context).size.width,
                        child: TextFormField(
                          obscureText: isObscured,
                          obscuringCharacter: '•',
                          controller: passwordConfirmController,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: kWhiteColorShade900,
                            hintText: 'Retype Password',
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
                      // Checkbox
                      Container(
                        margin: EdgeInsets.fromLTRB(0, kSizeSmall, 0, 0),
                        child: Row(
                          children: [
                            Checkbox(
                              value: isChecked,
                              activeColor: kBlueColorShade300,
                              shape: RoundedRectangleBorder(
                                borderRadius: kBorderRadiusTiny / 2,
                              ),
                              onChanged: (value) {
                                setState(
                                  () {
                                    isChecked = value!;
                                  },
                                );
                              },
                            ),
                            Row(
                              children: [
                                Text(
                                  'Saya setuju dengan ',
                                  style: talatah.textTheme.bodyText2!.copyWith(
                                    color: kGreyColorShade500,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pushNamed(context, Routes.terms);
                                  },
                                  child: Text(
                                    'Syarat dan Ketentuan',
                                    style:
                                        talatah.textTheme.bodyText2!.copyWith(
                                      color: kBlueColorShade500,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
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
                      onPressed: (checkNameController.isNotEmpty &&
                                  numberReg.hasMatch(checkNameController)) &&
                              checkEmailController.isNotEmpty &&
                              (checkPhoneController.isNotEmpty &&
                                  letterReg.hasMatch(checkPhoneController)) &&
                              (checkPasswordController.isNotEmpty &&
                                  numberReg.hasMatch(checkPasswordController) &&
                                  letterReg.hasMatch(checkPasswordController) &&
                                  (checkPasswordController.length <= 8)) &&
                              checkPasswordConfirmController.isNotEmpty &&
                              (passwordConfirmController.text ==
                                  passwordController.text) &&
                              isChecked == true
                          ? () {
                              // Navigator.pushNamed(context, ');
                            }
                          : err,
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Forgot password
                      Text(
                        'Have an account? ',
                        style: talatah.textTheme.button!.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      // Sign up
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(
                              context, Routes.signIn);
                        },
                        child: Text(
                          'Sign In',
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
