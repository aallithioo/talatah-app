import 'package:flutter/material.dart';
import '../widget/my_learning_card.dart';
import '../../../app/route/route.dart';
import '../../../app/theme/color.dart';
import '../../../app/theme/theme.dart';
import '../../../app/widgets/custom_padding.dart';
import '../../../app/widgets/custom_sizebox.dart';

class MyLearningScreen extends StatefulWidget {
  const MyLearningScreen({Key? key}) : super(key: key);

  @override
  _MyLearningScreenState createState() => _MyLearningScreenState();
}

class _MyLearningScreenState extends State<MyLearningScreen> {
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
                // TODO: Add header
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'My Learning',
                      style: talatah.textTheme.headline6!.copyWith(
                        color: talatah.textTheme.headline6!.color,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    kSizeBoxVerticalSmall,
                    // TODO: Add list of quiz
                    Column(
                      children: const [
                        MyLearningCard(
                          image: 'assets/images/png/img_math_small.png',
                          title: 'Summation',
                          subject: 'Math',
                          grade: 'SD Kelas 1',
                          imageTeacher: 'assets/images/jpg/img_teacher.jpg',
                        ),
                        MyLearningCard(
                          image: 'assets/images/png/img_art_small.png',
                          title: 'Drawing',
                          subject: 'Art',
                          grade: 'SD Kelas 1',
                          imageTeacher: 'assets/images/jpg/img_teacher.jpg',
                        ),
                        MyLearningCard(
                          image: 'assets/images/png/img_social_small.png',
                          title: 'Opinion',
                          subject: 'Social',
                          grade: 'SD Kelas 1',
                          imageTeacher: 'assets/images/jpg/img_teacher.jpg',
                        ),
                        MyLearningCard(
                          image: 'assets/images/png/img_math_small.png',
                          title: 'Subtraction',
                          subject: 'Math',
                          grade: 'SD Kelas 1',
                          imageTeacher: 'assets/images/jpg/img_teacher.jpg',
                        ),
                      ],
                    ),
                  ],
                ),
                kSizeBoxVerticalMedium,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
