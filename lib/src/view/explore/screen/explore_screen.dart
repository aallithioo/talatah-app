import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../../../app/route/route.dart';
import '../../../app/theme/color.dart';
import '../../../app/theme/size.dart';
import '../../../app/theme/theme.dart';
import '../../../app/widgets/custom_blur.dart';
import '../../../app/widgets/custom_border.dart';
import '../../../app/widgets/custom_padding.dart';
import '../../../app/widgets/custom_sizebox.dart';
import '../widgets/current_learning_card.dart';
import '../widgets/recommend_learning_card.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  _ExploreScreenState createState() => _ExploreScreenState();
}

double? myWidth;
bool isShow = true;

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  void initState() {
    super.initState();
  }

  var user = FirebaseAuth.instance.currentUser;

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
                kSizeBoxVerticalSmall,
                // TODO: add User name & description
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // TODO: add User name
                    Text(
                      'Hello, ${user!.displayName}',
                      style: Theme.of(context).textTheme.headline5!.copyWith(
                            color: talatah.textTheme.headline5!.color,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    kSizeBoxVerticalTiny,
                    // TODO: add description
                    Text(
                      'Let\'s start learn together and \ndon\'t forget to share your knowledge',
                      style: talatah.textTheme.bodyText1!.copyWith(
                        color: talatah.textTheme.bodyText1!.color!
                            .withOpacity(0.7),
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
                kSizeBoxVerticalSmall,
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
                // TODO: add banner
                Card(
                  margin: kPaddingSymetricVerticalSmall,
                  elevation: 0,
                  color: kTransparentColor,
                  child: Container(
                    height: 175,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: kWhiteColorShade800,
                      borderRadius: kBorderRadiusSmall,
                      // TODO: add banner image
                      // image: DecorationImage(
                      //   image: AssetImage('assets/images/banner.png'),
                      //   fit: BoxFit.cover,
                      // ),
                    ),
                  ),
                ),
                kSizeBoxVerticalSmall,
                // TODO: add popular
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Popular',
                      style: talatah.textTheme.headline6!.copyWith(
                        color: talatah.textTheme.headline6!.color,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Container(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: const [
                            CurrentLearningCard(),
                            CurrentLearningCard(),
                            CurrentLearningCard(),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                kSizeBoxVerticalSmall,
                // TODO: add recommended
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Recommended',
                      style: talatah.textTheme.headline6!.copyWith(
                        color: talatah.textTheme.headline6!.color,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: kSizeSmall),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, Routes.signIn);
                        },
                        child: GridView.count(
                          crossAxisCount: 2,
                          mainAxisSpacing: kSizeSmall,
                          shrinkWrap: true,
                          primary: false,
                          physics: const ScrollPhysics(),
                          children: const [
                            RecommendLearningCard(),
                            RecommendLearningCard(),
                            RecommendLearningCard(),
                            RecommendLearningCard(),
                            RecommendLearningCard(),
                            RecommendLearningCard(),
                          ],
                        ),
                        // Working Fine
                        // GridView.builder(
                        //   scrollDirection: Axis.vertical,
                        //   physics: const ScrollPhysics(),
                        //   shrinkWrap: true,
                        //   itemCount: 4,
                        //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        //     crossAxisCount: 2,
                        //     childAspectRatio: 1.5,
                        //     crossAxisSpacing: kSizeSmall,
                        //     mainAxisSpacing: kSizeSmall,
                        //   ),
                        //   itemBuilder: (BuildContext context, int) => GestureDetector(
                        //     onTap: () {
                        //       Navigator.pushNamed(context, Routes.signIn);
                        //     },
                        //     child: RecommendLearningCard(),
                        //   ),
                        // ),
                      ),
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
