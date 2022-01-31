part of '../intro_screen.dart';

class IntroBody extends StatefulWidget {
  const IntroBody({Key? key}) : super(key: key);

  @override
  State<IntroBody> createState() => _IntroBodyState();
}

class _IntroBodyState extends State<IntroBody> {
  int currentPage = 0;
  List<Map<String, String>> introData = [
    {
      'title': 'Welcome to talatah',
      'description': 'Welcome to the app',
      'imageURL': 'assets/images/png/dummy.png',
    },
    {
      'title': 'Open-Source Program',
      'description': 'Welcome to the app',
      'imageURL': 'assets/images/png/dummy.png',
    },
    {
      'title': 'Privacy is our concern',
      'description': 'Welcome to the app',
      'imageURL': 'assets/images/png/dummy.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const Spacer(),
          kSizeBoxVerticalMedium,
          Text(
            'talatah',
            style: kThioAlli.textTheme.headline3!.copyWith(
              color: kAccentColor,
              fontWeight: kFontWeightBold,
            ),
          ),
          kSizeBoxVerticalMedium,
          Expanded(
            flex: 4,
            child: PageView.builder(
              itemBuilder: (_, index) => IntroContent(
                title: introData[index]['title'],
                description: introData[index]['description'],
                imageURL: introData[index]['imageURL'],
              ),
              itemCount: introData.length,
              onPageChanged: (index) {
                setState(() => currentPage = index);
              },
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                  introData.length,
                  (index) => indicator(index: index),
                ),
              ],
            ),
          ),
          Positioned.fill(
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                kSizeMedium,
                0,
                kSizeMedium,
                kSizeMedium,
              ),
              child: Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  color: kTransparentColor,
                  borderRadius: kBorderRadiusTiny,
                  border: Border.all(
                    color: kAccentColor,
                    width: 2,
                  ),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, Routes.info);
                  },
                  child: Text(
                    'Continue'.toUpperCase(),
                    style: kThioAlli.textTheme.button!.copyWith(
                      color: kAccentColor,
                    ),
                    textAlign: kTextAlignCenter,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  AnimatedContainer indicator({int? index}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      margin: EdgeInsets.only(right: kSizeTiny),
      height: kSizeTiny - 2,
      width: currentPage == index ? kSizeMedium : kSizeTiny - 2,
      decoration: BoxDecoration(
        color: currentPage == index ? kAccentColor : kSecondaryColor,
        borderRadius: kBorderRadiusTiny,
      ),
    );
  }
}
