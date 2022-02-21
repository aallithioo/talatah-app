part of '../donators_screen.dart';

class DonatorsContent extends StatefulWidget {
  const DonatorsContent({Key? key}) : super(key: key);

  @override
  State<DonatorsContent> createState() => _DonatorsContentState();
}

class _DonatorsContentState extends State<DonatorsContent> {
  List donators = [
    {
      'name': 'Tuan Alli',
      'total': '1 Million',
    },
    {
      'name': 'Tuan Alli',
      'total': '1 Million',
    },
    {
      'name': 'Tuan Alli',
      'total': '1 Million',
    },
    {
      'name': 'Tuan Alli',
      'total': '1 Million',
    },
    {
      'name': 'Tuan Alli',
      'total': '1 Million',
    },
    {
      'name': 'Tuan Alli',
      'total': '1 Million',
    },
    {
      'name': 'Tuan Alli',
      'total': '1 Million',
    },
    {
      'name': 'Tuan Alli',
      'total': '1 Million',
    },
    {
      'name': 'Tuan Alli',
      'total': '1 Million',
    },
    {
      'name': 'Tuan Alli',
      'total': '1 Million',
    },
    {
      'name': 'Tuan Alli',
      'total': '1 Million',
    },
    {
      'name': 'Tuan Alli',
      'total': '1 Million',
    },
    {
      'name': 'Tuan Alli',
      'total': '1 Million',
    },
    {
      'name': 'Tuan Alli',
      'total': '1 Million',
    },
    {
      'name': 'Tuan Alli',
      'total': '1 Million',
    },
    {
      'name': 'Tuan Alli',
      'total': '1 Million',
    },
    {
      'name': 'Tuan Alli',
      'total': '1 Million',
    },
    {
      'name': 'Tuan Alli',
      'total': '1 Million',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SetSizeBox.verticalMedium,
        Center(
          child: Text(
            'Special thanks to\nour DONATORS for their support!',
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  color: SetColor.accent,
                ),
            textAlign: SetTextAlign.center,
          ),
        ),
        SetSizeBox.verticalMedium,
        ...List.generate(
          donators.length,
          (index) {
            return Container(
              margin: SetMargin.onlyBottomSmall / 1.5,
              padding: SetPadding.allSmall,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: SetBorder.radiusAllTiny,
                color: SetColor.secondary,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: SetPadding.onlyRightSmall,
                          child: ClipRRect(
                            borderRadius: SetBorder.radiusAllTiny / 2,
                            child: Image.asset(
                              'assets/images/png/img_donators.png',
                              height: SetSize.medium,
                              width: SetSize.medium,
                            ),
                          ),
                        ),
                        Text(
                          donators.toList()[index]['name'],
                          style: kThioAlli.textTheme.bodyText1!.copyWith(
                            color: SetColor.accent,
                          ),
                          textAlign: SetTextAlign.right,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  Text(
                    '\$ ' + donators.toList()[index]['total'],
                    style: kThioAlli.textTheme.bodyText1!.copyWith(
                      color: SetColor.accent,
                    ),
                    textAlign: SetTextAlign.left,
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
