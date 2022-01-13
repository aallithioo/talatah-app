import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:talatah/src/app/route/route.dart';
import 'package:talatah/src/app/theme/color.dart';
import 'package:talatah/src/app/theme/theme.dart';
import 'package:talatah/src/app/widgets/custom_border.dart';
import 'package:talatah/src/app/widgets/custom_padding.dart';
import 'package:talatah/src/app/widgets/custom_sizebox.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

var user = FirebaseAuth.instance.currentUser;

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: kPaddingSymetricHorizontalLarge,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // TODO: Add profile picture
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: kBorderRadiusTiny,
                        image: DecorationImage(
                          image: NetworkImage(
                            user!.photoURL.toString(),
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    // TODO: Add name
                    Container(
                      padding: kPaddingSymetricHorizontalSmall,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                user!.displayName.toString(),
                                style: talatah.textTheme.headline6!.copyWith(
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                'SMKN 10 Kabupaten Garut',
                                style: talatah.textTheme.bodyText1!.copyWith(
                                  color: talatah.textTheme.bodyText1!.color!
                                      .withOpacity(0.7),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                          kSizeBoxVerticalMedium,
                          Text(
                            user!.email.toString(),
                            style: talatah.textTheme.bodyText1!.copyWith(
                              color: talatah.textTheme.bodyText1!.color!
                                  .withOpacity(0.7),
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                kSizeBoxVerticalMedium,
                // TODO: Add profile setting option
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Account',
                      style: talatah.textTheme.headline6!.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    kSizeBoxVerticalTiny,
                    TextButton(
                      clipBehavior: Clip.antiAlias,
                      onPressed: () {},
                      child: Text(
                        'Change Email Address',
                        style: talatah.textTheme.bodyText1!.copyWith(
                          color: talatah.textTheme.bodyText1!.color!
                              .withOpacity(0.7),
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    TextButton(
                      clipBehavior: Clip.antiAlias,
                      onPressed: () {},
                      child: Text(
                        'Change Password',
                        style: talatah.textTheme.bodyText1!.copyWith(
                          color: talatah.textTheme.bodyText1!.color!
                              .withOpacity(0.7),
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    TextButton(
                      clipBehavior: Clip.antiAlias,
                      onPressed: () {},
                      child: Text(
                        'Transactions History',
                        style: talatah.textTheme.bodyText1!.copyWith(
                          color: talatah.textTheme.bodyText1!.color!
                              .withOpacity(0.7),
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ],
                ),
                kSizeBoxVerticalSmall,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Help',
                      style: talatah.textTheme.headline6!.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    kSizeBoxVerticalTiny,
                    TextButton(
                      clipBehavior: Clip.antiAlias,
                      onPressed: () {
                        Navigator.pushNamed(context, Routes.about);
                      },
                      child: Text(
                        'About Indiedu',
                        style: talatah.textTheme.bodyText1!.copyWith(
                          color: talatah.textTheme.bodyText1!.color!
                              .withOpacity(0.7),
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    TextButton(
                      clipBehavior: Clip.antiAlias,
                      onPressed: () {},
                      child: Text(
                        'Contribution',
                        style: talatah.textTheme.bodyText1!.copyWith(
                          color: talatah.textTheme.bodyText1!.color!
                              .withOpacity(0.7),
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    TextButton(
                      clipBehavior: Clip.antiAlias,
                      onPressed: () {},
                      child: Text(
                        'FAQs',
                        style: talatah.textTheme.bodyText1!.copyWith(
                          color: talatah.textTheme.bodyText1!.color!
                              .withOpacity(0.7),
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    TextButton(
                      clipBehavior: Clip.antiAlias,
                      onPressed: () {
                        Navigator.pushNamed(context, Routes.privacy);
                      },
                      child: Text(
                        'Privacy Policy',
                        style: talatah.textTheme.bodyText1!.copyWith(
                          color: talatah.textTheme.bodyText1!.color!
                              .withOpacity(0.7),
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ],
                ),
                kSizeBoxVerticalTiny,
                const Divider(),
                kSizeBoxVerticalTiny,
                TextButton(
                  onPressed: () {
                    FirebaseAuth.instance.signOut();
                  },
                  child: Text(
                    'Sign Out',
                    style: talatah.textTheme.bodyText1!.copyWith(
                      color: kErrorColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                kSizeBoxHorizontalMedium,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
