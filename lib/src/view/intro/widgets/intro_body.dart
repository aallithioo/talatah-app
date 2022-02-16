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
      'title': 'Secure',
      'description': 'Data secured by strong encryption',
      'imageURL': 'assets/images/png/img_intro_0.png',
    },
    {
      'title': 'Private',
      'description': 'No one know your data even us!',
      'imageURL': 'assets/images/png/img_intro_1.png',
    },
    {
      'title': 'Local',
      'description': 'All of data stored in local storage',
      'imageURL': 'assets/images/png/img_intro_2.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const Spacer(),
          SetSizeBox.verticalMedium,
          Text(
            'talatah',
            style: kThioAlli.textTheme.headline3!.copyWith(
              color: SetColor.accent,
              fontWeight: SetFontWeight.bold,
            ),
          ),
          SetSizeBox.verticalMedium,
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
          Padding(
            padding: SetPadding.onlyBottomMedium,
            child: Padding(
              padding: SetPadding.symetricHorizontalMedium,
              child: Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  color: SetColor.transparent,
                  borderRadius: SetBorder.radiusAllTiny,
                  border: Border.all(
                    color: SetColor.accent,
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
                      color: SetColor.accent,
                    ),
                    textAlign: SetTextAlign.center,
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
      margin: SetMargin.onlyRightTiny,
      height: SetSize.tiny - 2,
      width: currentPage == index ? SetSize.medium - 4 : SetSize.tiny - 2,
      decoration: BoxDecoration(
        color: currentPage == index ? SetColor.accent : SetColor.secondary,
        borderRadius: SetBorder.radiusAllTiny,
      ),
    );
  }
}
