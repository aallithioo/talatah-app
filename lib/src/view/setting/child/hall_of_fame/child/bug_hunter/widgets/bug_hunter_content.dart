part of '../bug_hunter_screen.dart';

class BugHunterContent extends StatefulWidget {
  const BugHunterContent({Key? key}) : super(key: key);

  @override
  State<BugHunterContent> createState() => _BugHunterContentState();
}

class _BugHunterContentState extends State<BugHunterContent> {
  List bughunter = [
    {
      'name': 'Tuan Alli',
      'total': '1',
    },
    {
      'name': 'Tuan Alli',
      'total': '1',
    },
    {
      'name': 'Tuan Alli',
      'total': '1',
    },
    {
      'name': 'Tuan Alli',
      'total': '1',
    },
    {
      'name': 'Tuan Alli',
      'total': '1',
    },
    {
      'name': 'Tuan Alli',
      'total': '1',
    },
    {
      'name': 'Tuan Alli',
      'total': '1',
    },
    {
      'name': 'Tuan Alli',
      'total': '1',
    },
    {
      'name': 'Tuan Alli',
      'total': '1',
    },
    {
      'name': 'Tuan Alli',
      'total': '1',
    },
    {
      'name': 'Tuan Alli',
      'total': '1',
    },
    {
      'name': 'Tuan Alli',
      'total': '1',
    },
    {
      'name': 'Tuan Alli',
      'total': '1',
    },
    {
      'name': 'Tuan Alli',
      'total': '1',
    },
    {
      'name': 'Tuan Alli',
      'total': '1',
    },
    {
      'name': 'Tuan Alli',
      'total': '1',
    },
    {
      'name': 'Tuan Alli',
      'total': '1',
    },
    {
      'name': 'Tuan Alli',
      'total': '1',
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
            'Special thanks to\nour BUG HUNTERS for their support!',
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  color: SetColor.accent,
                ),
            textAlign: SetTextAlign.center,
          ),
        ),
        SetSizeBox.verticalMedium,
        ...List.generate(
          bughunter.length,
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
                              'assets/images/png/img_hunters.png',
                              height: SetSize.medium,
                              width: SetSize.medium,
                            ),
                          ),
                        ),
                        Text(
                          bughunter.toList()[index]['name'],
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
                    bughunter.toList()[index]['total'] + ' Reports',
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
