import 'package:flutter/material.dart';

import '../../../../app/themes/font_weight.dart';
import '../../../../app/themes/size.dart';
import '../../../../app/themes/theme.dart';
import '../../../../app/widgets/border.dart';
import '../../../../app/widgets/padding.dart';
import '../../../../app/themes/color.dart';
import 'child/bug_hunter/bug_hunter_screen.dart';
import 'child/donators/donators_screen.dart';

part './widgets/hall_of_fame_body.dart';
part './widgets/hall_of_fame_content.dart';

class HallOfFameScreen extends StatefulWidget {
  const HallOfFameScreen({Key? key}) : super(key: key);

  @override
  State<HallOfFameScreen> createState() => _HallOfFameScreenState();
}

class _HallOfFameScreenState extends State<HallOfFameScreen> {
  TabController? _tabController;

  @override
  Widget build(BuildContext context) {
    final upperTab = TabBar(
      controller: _tabController,
      indicatorColor: SetColor.blue_400,
      tabs: const <Tab>[
        Tab(
          text: 'Donators',
        ),
        Tab(
          text: 'Bug Hunter',
        ),
      ],
    );

    return DefaultTabController(
      initialIndex: upperTab.tabs.length - upperTab.tabs.length,
      length: upperTab.tabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Hall of Fame',
            style: kThioAlli.textTheme.headline6!.copyWith(
              color: SetColor.accent,
              fontSize: SetSize.medium / 1.5,
              fontWeight: SetFontWeight.medium,
            ),
          ),
          backgroundColor: Colors.transparent,
          // centerTitle: true,
          foregroundColor: kThioAlli.textTheme.headline1!.color,
          shadowColor: Colors.transparent,
          elevation: 0.0,
          automaticallyImplyLeading: false,
          bottom: upperTab,
        ),
        body: TabBarView(
          children: const [
            DonatorsScreen(),
            BugHunterScreen(),
          ],
          controller: _tabController,
        ),
        bottomNavigationBar: Padding(
          padding: SetPadding.symetricHorizontalMedium,
          child: Padding(
            padding: SetPadding.onlyBottomMedium,
            child: Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                color: SetColor.transparent,
                borderRadius: SetBorder.radiusAllTiny,
                border: Border.all(
                  color: SetColor.accent,
                  width: 0.8,
                ),
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Back',
                  style: kThioAlli.textTheme.button!.copyWith(
                    color: SetColor.accent,
                    fontWeight: SetFontWeight.light,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
