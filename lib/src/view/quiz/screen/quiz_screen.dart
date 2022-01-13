import 'package:flutter/material.dart';
import 'package:talatah/src/app/theme/theme.dart';
import 'package:talatah/src/app/widgets/custom_padding.dart';

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
                Text(
                  'Belum Selesai',
                  style: talatah.textTheme.bodyText1,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
