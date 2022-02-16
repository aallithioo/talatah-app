import 'package:flutter/material.dart';

import 'padding.dart';
import 'border.dart';
import '../themes/size.dart';
import '../enums.dart';
import '../routes/route.dart';
import '../themes/color.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key? key,
    required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: SetSize.small,
        left: SetSize.medium,
        right: SetSize.medium,
        bottom: SetSize.medium,
      ),
      child: Container(
        padding: SetPadding.symetricVerticalSmall / 1.5,
        decoration: BoxDecoration(
          color: SetColor.secondary,
          borderRadius: SetBorder.radiusAllTiny,
        ),
        child: SafeArea(
          top: false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Icon(
                  Icons.crop_free,
                  color: MenuState.home == selectedMenu
                      ? SetColor.accent
                      : SetColor.accent.withOpacity(0.3),
                ),
                onPressed: () => Navigator.pushReplacementNamed(
                  context,
                  Routes.home,
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.settings_rounded,
                  color: MenuState.setting == selectedMenu
                      ? SetColor.accent
                      : SetColor.accent.withOpacity(0.3),
                ),
                onPressed: () => Navigator.pushReplacementNamed(
                  context,
                  Routes.setting,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
