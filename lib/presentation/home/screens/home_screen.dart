import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather/core/config/index.dart' show AppTextStyles;

import 'package:weather/presentation/core/providers/index.dart'
    show connectivityProvider, homeCounterProvider;
import 'package:weather/presentation/core/screens/index.dart'
    show EventsScreen, FavoritesScreen, MapScreen, WeatherScreen;
import 'package:weather/presentation/core/widgets/index.dart' show BottomNavBarCustom;

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = ref.watch(homeCounterProvider);
    final hasInternet = ref.watch(connectivityProvider);

    final List<Widget> screens = [
      const WeatherScreen(),
      const EventsScreen(),
      const FavoritesScreen(),
      const MapScreen(),
    ];

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!hasInternet) {
        _showNoInternetAlert(context);
      }
    });

    return Scaffold(
      body: screens[selectedIndex],
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavBarCustom(
        selectedIndex: selectedIndex,
        onTap: (index) => ref.read(homeCounterProvider.notifier).state = index,
      ),
    );
  }

  void _showNoInternetAlert(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.wifi_off, color: colorScheme.error, size: 28),
                const SizedBox(width: 10),
                const Text('Sin conexión'),
              ],
            ),
            content: Text(
              'No tienes acceso a internet. Verifica tu conexión.',
              textAlign: TextAlign.center,
              style: AppTextStyles.bodySmall(context),
            ),
            actionsAlignment: MainAxisAlignment.center,
            actions: [
              TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: colorScheme.onPrimary,
                  backgroundColor: colorScheme.primary,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                ),
                onPressed: () => Navigator.of(context).pop(),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Text('Aceptar', style: AppTextStyles.textButton(context)),
                ),
              ),
            ],
          ),
    );
  }
}
