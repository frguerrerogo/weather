import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ConnectivityNotifier extends StateNotifier<bool> {
  ConnectivityNotifier() : super(true) {
    _checkInitialConnection();
    Connectivity().onConnectivityChanged.listen((result) {
      state = !result.contains(ConnectivityResult.none);
    });
  }

  Future<void> _checkInitialConnection() async {
    final result = await Connectivity().checkConnectivity();
    state = !result.contains(ConnectivityResult.none);
  }
}

final connectivityProvider = StateNotifierProvider<ConnectivityNotifier, bool>(
  (ref) => ConnectivityNotifier(),
);
