import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import '../../app/themes/color.dart';
import '../../app/themes/fontweight.dart';
import '../../app/themes/size.dart';
import '../../app/themes/theme.dart';
import '../../app/widgets/custom_border.dart';
import '../../app/widgets/custom_padding.dart';
import '../../app/widgets/custom_sizebox.dart';
import '../../app/widgets/custom_snackbar.dart';

part './widgets/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeBody(),
    );
  }
}
