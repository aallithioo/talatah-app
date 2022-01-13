import 'package:flutter/material.dart';
import 'package:talatah/src/app/route/route.dart';
import 'package:talatah/src/app/theme/color.dart';
import 'package:talatah/src/app/theme/size.dart';
import 'package:talatah/src/app/theme/theme.dart';
import 'package:talatah/src/app/widgets/custom_blur.dart';
import 'package:talatah/src/app/widgets/custom_border.dart';
import 'package:talatah/src/app/widgets/custom_category.dart';
import 'package:talatah/src/app/widgets/custom_padding.dart';
import 'package:talatah/src/app/widgets/custom_sizebox.dart';
import 'package:talatah/src/view/explore/widgets/recommend_learning_card.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
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
                // TODO: add search bar
                Container(
                  margin: EdgeInsets.only(top: kSizeSmall),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: kWhiteColorShade800,
                        blurRadius: kBlurRadiusHuge,
                      ),
                    ],
                  ),
                  child: TextField(
                    maxLines: 1,
                    decoration: InputDecoration(
                      hintText: 'Search',
                      hintStyle: talatah.textTheme.bodyText1!.copyWith(
                        color: kGreyColorShade400,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                      filled: true,
                      fillColor: kWhiteColorShade900,
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.search,
                          color: talatah.textTheme.bodyText1!.color,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: kBorderRadiusSmall,
                        borderSide: BorderSide.none,
                      ),
                    ),
                    keyboardType: TextInputType.text,
                  ),
                ),
                kSizeBoxVerticalSmall,
                // TODO: add category
                Wrap(
                  spacing: 0,
                  runSpacing: 0,
                  direction: Axis.horizontal,
                  children: [
                    categoryList(0),
                    categoryList(1),
                    categoryList(2),
                    categoryList(3),
                    categoryList(4),
                    categoryList(5),
                    categoryList(6),
                    categoryList(7),
                    categoryList(8),
                    categoryList(9),
                    categoryList(10),
                    categoryList(11),
                  ],
                ),
                // TODO: add search results
                kSizeBoxVerticalSmall,
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Search Results', style: talatah.textTheme.bodyText1!),
                    kSizeBoxVerticalSmall,
                    GridView.builder(
                      scrollDirection: Axis.vertical,
                      physics: const ScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 4,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 1.5,
                        crossAxisSpacing: kSizeSmall,
                        mainAxisSpacing: kSizeSmall,
                      ),
                      itemBuilder: (BuildContext context, int index) =>
                          GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, Routes.signIn);
                        },
                        child: const RecommendLearningCard(),
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
