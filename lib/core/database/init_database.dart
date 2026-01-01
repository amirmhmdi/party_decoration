import 'package:hive_flutter/hive_flutter.dart';

Future<void> initDataBase() async {
  await Hive.initFlutter();
}
