import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// Importa tus pantallas aquí
import 'package:weather/presentation/core/screens/index.dart';

class ScreenBuilders {
  static Widget homeScreenBuilder(BuildContext context, GoRouterState state) {
    return HomeScreen();
  }
}
