import 'package:flutter/material.dart';
import '../../../app/theme/color.dart';
import '../../../app/widgets/custom_border.dart';
import '../../../app/widgets/custom_margin.dart';

class SearchResultCard extends StatelessWidget {
  final String? title;
  final String? subject;
  final String? grade;
  final String? image;

  const SearchResultCard({
    Key? key,
    this.title,
    this.subject,
    this.grade,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 200,
      child: Card(
        margin: kMarginSymetricHorizontalTiny,
        shape: kRoundedBorderRadiusSmall,
        color: kWhiteColorShade800,
        shadowColor: kTransparentColor,
      ),
    );
  }
}
