import 'package:flutter/material.dart';
import 'package:talatah/src/app/route/route.dart';
import 'package:talatah/src/app/theme/color.dart';
import 'package:talatah/src/app/theme/size.dart';
import 'package:talatah/src/app/theme/theme.dart';
import 'package:talatah/src/app/widgets/custom_padding.dart';
import 'package:talatah/src/app/widgets/custom_sizebox.dart';
import 'package:talatah/src/view/quiz/widget/custom_quiz_card.dart';

class QuizListScreen extends StatefulWidget {
  const QuizListScreen({Key? key}) : super(key: key);

  @override
  _QuizListScreenState createState() => _QuizListScreenState();
}

class _QuizListScreenState extends State<QuizListScreen> {
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
                      'Belum Selesai',
                      style: talatah.textTheme.headline6!.copyWith(
                        color: talatah.textTheme.headline6!.color,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Divider(),
                    // TODO: Add list of quiz
                    ListView.builder(
                      scrollDirection: Axis.vertical,
                      physics: const ScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 3,
                      itemBuilder: (BuildContext context, int index) =>
                          GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, Routes.signIn);
                        },
                        child: Padding(
                          padding: kPaddingSymetricVerticalTiny,
                          child: const QuizCard(),
                        ),
                      ),
                    ),
                  ],
                ),
                kSizeBoxVerticalMedium,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Selesai',
                      style: talatah.textTheme.headline6!.copyWith(
                        color: talatah.textTheme.headline6!.color,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Divider(),
                    // TODO: Add list of quiz
                    ListView.builder(
                      scrollDirection: Axis.vertical,
                      physics: const ScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 3,
                      itemBuilder: (BuildContext context, int index) =>
                          GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, Routes.signIn);
                        },
                        child: Padding(
                          padding: kPaddingSymetricVerticalTiny,
                          child: QuizCard(
                            quizColor: kSuccessColor,
                          ),
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
    );
  }
}
