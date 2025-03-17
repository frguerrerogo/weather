import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:weather/presentation/core/widgets/index.dart' show WeatherDetail;

void main() {
  group('WeatherDetail Widget Tests', () {
    testWidgets('Escenario 1: Renderizado Básico', (WidgetTester tester) async {
      const label = "Humedad";
      const value = "50%";

      await tester.pumpWidget(
        MaterialApp(home: Scaffold(body: WeatherDetail(label: label, value: value))),
      );

      expect(find.text(label), findsOneWidget);
      expect(find.text(value), findsOneWidget);
    });

    testWidgets('Escenario 2: Label Vacío', (WidgetTester tester) async {
      const label = "";
      const value = "50%";

      await tester.pumpWidget(
        MaterialApp(home: Scaffold(body: WeatherDetail(label: label, value: value))),
      );

      expect(find.text(label), findsOneWidget);
      expect(find.text(value), findsOneWidget);
    });

    testWidgets('Escenario 3: Value Vacío', (WidgetTester tester) async {
      const label = "Humedad";
      const value = "";

      await tester.pumpWidget(
        MaterialApp(home: Scaffold(body: WeatherDetail(label: label, value: value))),
      );

      expect(find.text(label), findsOneWidget);
      expect(find.text(value), findsOneWidget);
    });
  });
}
