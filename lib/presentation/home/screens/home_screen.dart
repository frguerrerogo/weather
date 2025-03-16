import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:weather/presentation/core/providers/index.dart' show homeCounterProvider;
import 'package:weather/presentation/core/screens/index.dart' show EventsScreen, FavoritesScreen, WeatherScreen;

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = ref.watch(homeCounterProvider);

    final List<Widget> screens = [const WeatherScreen(), const EventsScreen(), const FavoritesScreen()];

    return Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index) => ref.read(homeCounterProvider.notifier).state = index,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.cloud), label: 'Clima'),
          BottomNavigationBarItem(icon: Icon(Icons.event_note_outlined), label: 'Eventos'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favoritos'),
        ],
      ),
    );
  }
}
