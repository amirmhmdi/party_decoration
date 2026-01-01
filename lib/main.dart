import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:party_decoration/core/router/router.dart';
import 'package:party_decoration/core/services/injection_container.dart';
import 'package:party_decoration/core/utils/path_url_strategy/path_url_strategy_non_web.dart'
    if (dart.library.js_interop) 'package:party_decoration/core/utils/path_url_strategy/path_url_strategy_web.dart';
import 'package:party_decoration/core/utils/theme/dark_theme.dart';
import 'package:party_decoration/core/utils/theme/light_theme.dart';
import 'package:party_decoration/core/utils/theme/theme_manager.dart';
import 'core/database/init_database.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureUrl();
  await initDataBase();
  await initServiceLocator();
  runApp(ProviderScope(child: const MainApp()));
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool themeMode = ref.watch(themeManagerProvider);
    return MaterialApp.router(
      routerConfig: router,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: themeMode == true ? ThemeMode.dark : ThemeMode.light,
    );
  }
}
