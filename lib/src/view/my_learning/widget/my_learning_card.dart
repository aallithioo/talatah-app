import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:talatah/src/app/widgets/custom_sizebox.dart';
import '../../../app/theme/theme.dart';
import '../../../app/widgets/custom_padding.dart';
import '../../../app/theme/color.dart';
import '../../../app/widgets/custom_border.dart';
import '../../../app/widgets/custom_margin.dart';

var user = FirebaseAuth.instance.currentUser;

class MyLearningCard extends StatelessWidget {
  final String? title;
  final String? subject;
  final String? grade;
  final String? image;

  const MyLearningCard({
    Key? key,
    this.title,
    this.subject,
    this.grade,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kPaddingSymetricVerticalTiny,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 150,
            height: 128,
            child: Card(
              margin: kMarginSymetricHorizontalTiny,
              shape: kRoundedBorderRadiusTiny,
              color: kWhiteColorShade800,
              shadowColor: kTransparentColor,
              child: ClipRRect(
                borderRadius: kBorderRadiusTiny,
                child: Image.asset(
                  image!,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Padding(
            padding: kPaddingSymetricHorizontalTiny,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title ?? 'Title',
                  style: talatah.textTheme.bodyText1!.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  subject ?? 'Subject',
                  style: talatah.textTheme.bodyText1!.copyWith(
                    color: talatah.textTheme.bodyText1!.color!.withOpacity(0.7),
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  grade ?? 'Grade',
                  style: talatah.textTheme.bodyText1!.copyWith(
                    color: talatah.textTheme.bodyText1!.color!.withOpacity(0.7),
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                kSizeBoxVerticalSmall,
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: kBorderRadiusTiny / 2,
                            image: image != null
                                ? DecorationImage(
                                    // image: NetworkImage(
                                    //   user!.photoURL.toString(),
                                    // ),
                                    image: AssetImage(
                                      'assets/images/jpg/img_teacher.jpg',
                                    ),
                                    fit: BoxFit.cover,
                                  )
                                : null,
                          ),
                        ),
                      ],
                    ),
                    kSizeBoxHorizontalTiny,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          // user!.displayName ?? 'Name',
                          'Kang Harold',
                          style: talatah.textTheme.bodyText1!.copyWith(
                            color: talatah.textTheme.bodyText1!.color!
                                .withOpacity(0.7),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'Teacher',
                          style: talatah.textTheme.bodyText1!.copyWith(
                            color: talatah.textTheme.bodyText1!.color!
                                .withOpacity(0.7),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
