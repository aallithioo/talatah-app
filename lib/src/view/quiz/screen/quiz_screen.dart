import 'package:flutter/material.dart';
import '../../../app/route/route.dart';
import '../../../app/theme/color.dart';
import '../../../app/theme/theme.dart';
import '../../../app/widgets/custom_padding.dart';
import '../../../app/widgets/custom_sizebox.dart';
import '../widget/custom_quiz_card.dart';

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
                      'Quiz List',
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
                            quizColor: kBlueColorShade300,
                          ),
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
                      'Completed',
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
