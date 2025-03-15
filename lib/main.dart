import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:weather/core/router/app_router.dart';

import 'core/config/flavors.dart';

void main() {
  F.appFlavor = Flavor.values.firstWhere((element) => element.name == appFlavor);

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
