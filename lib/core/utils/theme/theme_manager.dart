import 'package:flutter/material.dart';
import 'package:party_decoration/core/database/cache_helper.dart';
import 'package:party_decoration/core/services/injection_container.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_manager.g.dart';

@riverpod
class ThemeManager extends _$ThemeManager {
  @override
  bool build() {
    bool isDarkMode;
    try {
      isDarkMode = sl<CacheHelper>().getThemeMode();
    } catch (e) {
      isDarkMode = ThemeMode.system == ThemeMode.dark ? true : false;
      sl<CacheHelper>().setThemeMode(isDarkMode);
    }
    return isDarkMode;
  }

  bool toggleThemeMode() {
    state = !state;
    sl<CacheHelper>().setThemeMode(state);
    return state;
  }
}
