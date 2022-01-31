import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import 'src/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // await Hive.initFlutter();
  // await Hive.deleteBoxFromDisk(box: 'type-here');
  // await Hive.openBox(box: 'type-here');
  runApp(const MyApp());
}
