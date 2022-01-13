import 'package:flutter/material.dart';
import '../../../app/theme/color.dart';
import '../../../app/widgets/custom_border.dart';
import '../../../app/widgets/custom_margin.dart';

class QuizCard extends StatelessWidget {
  final String? title;
  final String? subject;
  final String? grade;
  final String? image;
  final String? point;
  final String? maxPoint;

  const QuizCard({
    Key? key,
    this.title,
    this.subject,
    this.grade,
    this.image,
    this.point,
    this.maxPoint,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 150,
      child: Card(
        margin: kMarginSymetricHorizontalTiny,
        shape: kRoundedBorderRadiusSmall,
        color: kBlueColorShade400,
        shadowColor: kTransparentColor,
      ),
    );
  }
}
