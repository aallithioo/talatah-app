import 'package:flutter/material.dart';

import '../themes/size.dart';

class SetSizeBox {
  // vertical
  static final verticalTiny = SizedBox(
    height: SetSize.tiny,
  );
  static final verticalSmall = SizedBox(
    height: SetSize.small,
  );
  static final verticalMedium = SizedBox(
    height: SetSize.medium,
  );
  static final verticalLarge = SizedBox(
    height: SetSize.large,
  );
  static final verticalHuge = SizedBox(
    height: SetSize.huge,
  );

  // horizontal
  static final horizontalTiny = SizedBox(
    width: SetSize.tiny,
  );
  static final horizontalSmall = SizedBox(
    width: SetSize.small,
  );
  static final horizontalMedium = SizedBox(
    width: SetSize.medium,
  );
  static final horizontalLarge = SizedBox(
    width: SetSize.large,
  );
  static final horizontalHuge = SizedBox(
    width: SetSize.huge,
  );
}
