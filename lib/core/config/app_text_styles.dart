import 'package:flutter/material.dart';

class AppTextStyles {
  static TextStyle headlineMedium(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return TextStyle(
      fontSize: 50,
      fontWeight: FontWeight.bold,

      color: colorScheme.primary,
      letterSpacing: 1.5,
    );
  }

  static TextStyle titleLarge(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return TextStyle(
      fontSize: 40,
      fontWeight: FontWeight.bold,
      color: colorScheme.primary,
      letterSpacing: 1.5,
    );
  }

  static TextStyle titleMedium(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: colorScheme.primary,
      letterSpacing: 1.2,
    );
  }

  static TextStyle titleSmall(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w500,
      color: colorScheme.primary,
      letterSpacing: 1.0,
    );
  }

  static TextStyle bodyLarge(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: colorScheme.onSurface,
      letterSpacing: 0.5,
    );
  }

  static TextStyle bodyMedium(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.normal,
      color: colorScheme.onSurface,
      letterSpacing: 0.5,
    );
  }

  static TextStyle bodySmall(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.normal,
      color: colorScheme.onSurface,
      letterSpacing: 0.5,
    );
  }

  static TextStyle errorText(BuildContext context) {
    return TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: Colors.red,
      letterSpacing: 0.5,
    );
  }
}
