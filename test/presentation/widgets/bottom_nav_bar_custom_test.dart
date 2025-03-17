import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:weather/presentation/widgets/bottom_nav_bar_custom.dart';

void main() {
  testWidgets('BottomNavBarCustom se renderiza y cambia de selección', (WidgetTester tester) async {
    int tappedIndex = -1;

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          bottomNavigationBar: BottomNavBarCustom(
            selectedIndex: 0,
            onTap: (index) {
              tappedIndex = index;
            },
          ),
        ),
      ),
    );

    expect(find.text('Clima'), findsOneWidget);
    expect(find.text('Eventos'), findsOneWidget);
    expect(find.text('Favoritos'), findsOneWidget);

    await tester.tap(find.text('Eventos'));
    await tester.pump();

    expect(tappedIndex, 1);

    await tester.tap(find.text('Favoritos'));
    await tester.pump();

    expect(tappedIndex, 2);
  });

  testWidgets('BottomNavBarCustom muestra el ícono seleccionado con el estilo correcto', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      MaterialApp(
        theme: ThemeData.light(),
        home: Scaffold(bottomNavigationBar: BottomNavBarCustom(selectedIndex: 1, onTap: (_) {})),
      ),
    );

    final iconFinder = find.byIcon(Icons.event_note_outlined);
    final selectedIcon = tester.firstWidget<Icon>(iconFinder);

    expect(selectedIcon.color, equals(ThemeData.light().colorScheme.primary));
    expect(selectedIcon.size, equals(28));

    final unselectedIconFinder = find.byIcon(Icons.cloud);
    final unselectedIcon = tester.firstWidget<Icon>(unselectedIconFinder);

    expect(unselectedIcon.color, equals(Colors.grey));
    expect(unselectedIcon.size, equals(24));

    expect(find.byType(Container), findsOneWidget);
  });

  testWidgets('BottomNavBarCustom actualiza la selección cuando cambia el estado', (
    WidgetTester tester,
  ) async {
    int selectedIndex = 0;

    await tester.pumpWidget(
      StatefulBuilder(
        builder: (context, setState) {
          return MaterialApp(
            home: Scaffold(
              bottomNavigationBar: BottomNavBarCustom(
                selectedIndex: selectedIndex,
                onTap: (index) {
                  setState(() {
                    selectedIndex = index;
                  });
                },
              ),
            ),
          );
        },
      ),
    );

    expect(find.byIcon(Icons.cloud), findsOneWidget);

    await tester.tap(find.text('Favoritos'));
    await tester.pump();

    final selectedIcon = tester.firstWidget<Icon>(find.byIcon(Icons.favorite));
    expect(selectedIcon.color, equals(ThemeData.light().colorScheme.primary));
  });
}
