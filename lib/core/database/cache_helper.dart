import 'package:hive/hive.dart';
import 'package:party_decoration/core/utils/constans/database_keys.dart';

class CacheHelper {
  CacheHelper(this.box);
  final Box box;

  void setThemeMode(bool themeMode) {
    box.put(DatabaseKeys.themeModeDatabaseKey, themeMode);
  }

  bool getThemeMode() {
    return box.get(DatabaseKeys.themeModeDatabaseKey) as bool;
  }
}
