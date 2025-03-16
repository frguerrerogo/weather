import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:weather/core/di/dependency_injector.dart' show Injector;

import 'package:weather/core/router/app_router.dart';

import 'core/config/flavors.dart';

void main() async {
  F.appFlavor = Flavor.values.firstWhere((element) => element.name == appFlavor);
  Injector.setup();
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting('es_ES', null);
  Intl.defaultLocale = 'es_ES';
  runApp(ProviderScope(child: App()));
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      title: F.title,
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}
