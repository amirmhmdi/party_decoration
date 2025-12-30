import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:party_decoration/core/router/router.dart';
import 'package:party_decoration/core/utils/path_url_strategy/path_url_strategy_non_web.dart'
    if (dart.library.js_interop) 'package:party_decoration/core/utils/path_url_strategy/path_url_srategy_web.dart';

void main() {
  configureUrl();
  runApp(ProviderScope(child: const MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(routerConfig: router);
  }
}
