import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

import 'src/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();
  // await Hive.deleteBoxFromDisk(box: 'type-here');
  await Hive.openBox('box');
  runApp(const MyApp());
}
