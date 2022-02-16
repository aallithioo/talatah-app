import 'package:flutter/material.dart';
import 'package:talatah/src/app/themes/color.dart';

class SetDivider {
  static Divider thin = Divider(
    thickness: 1.0,
    color: SetColor.accent.withOpacity(0.2),
  );

  static Divider thick = Divider(
    thickness: 2.0,
    color: SetColor.accent.withOpacity(0.2),
  );
}
