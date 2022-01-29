import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';

import '../constant.dart';
import '../../models/db_model.dart';

class DbHelper {
  static Database? _database;

  static Future<void> init() async {
    Directory? directory = await getExternalStorageDirectory();
    _database = await openDatabase(
      join(directory?.path ?? '', Init.taltahDbName),
      version: 1,
      onCreate: (Database db, int version) async {
        await db.execute(
          'CREATE TABLE ${Init.talatahTableName} ('
          '${Init.talatahId} INTEGER PRIMARY KEY AUTOINCREMENT, '
          '${Init.talatahVendor} TEXT, '
          '${Init.talatahEmail} TEXT, '
          '${Init.talatahPassword} TEXT'
          ')',
        );
      },
    );
  }

  static Future<int?> createData(TalatahData talatahData) async {
    return await _database?.insert(
      Init.talatahTableName,
      talatahData.toMap(),
    );
  }

  static Future<List<TalatahData>> readData() async {
    List<Map<String, Object?>>? data = await _database?.query(
      Init.talatahTableName,
    );
    List<TalatahData> talatahDatas = <TalatahData>[];
    if (data == null) return talatahDatas;
    for (Map<String, Object?> item in data) {
      talatahDatas.add(
        TalatahData.fromMap(item),
      );
    }
    return talatahDatas;
  }

  static Future<int?> updateData(TalatahData talatahData) async {
    return await _database?.update(
      Init.talatahTableName,
      talatahData.toMap(),
      where: '${Init.talatahId} = ?',
      whereArgs: <Object?>[talatahData.id],
    );
  }

  static Future<int?> deleteData(int id) async {
    return await _database?.delete(
      Init.talatahTableName,
      where: '${Init.talatahId} = ?',
      whereArgs: <Object?>[id],
    );
  }
}
