import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:weather/presentation/core/providers/index.dart' show homeCounterProvider;
import 'package:weather/presentation/core/screens/index.dart'
    show EventsScreen, FavoritesScreen, WeatherScreen;
import 'package:weather/presentation/widgets/index.dart' show BottomNavBarCustom;

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = ref.watch(homeCounterProvider);

    final List<Widget> screens = [
      const WeatherScreen(),
      const EventsScreen(),
      const FavoritesScreen(),
    ];

    return Scaffold(
      body: screens[selectedIndex],
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavBarCustom(
        selectedIndex: selectedIndex,
        onTap: (index) => ref.read(homeCounterProvider.notifier).state = index,
      ),
    );
  }
}
