import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:weather/core/config/index.dart' show AppUtils;
import 'package:weather/presentation/core/widgets/index.dart' show WeatherToday;

void main() {
  setUpAll(() async {
    await initializeDateFormatting('es_ES', null);
  });
  testWidgets('WeatherToday muestra todos los datos correctamente', (WidgetTester tester) async {
    const datetime = "2023-10-01";
    const timezone = "America/Bogota";
    const temp = 25.0;
    const conditions = "Sunny";
    const humidity = 50.0;
    const windspeed = 10.0;
    const feelslike = 26.0;
    const precipprob = 0.0;
    const uvindex = 5.0;
    const pressure = 1013.0;

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Column(
            children: [
              WeatherToday(
                datetime: datetime,
                timezone: timezone,
                temp: temp,
                conditions: conditions,
                humidity: humidity,
                windspeed: windspeed,
                feelslike: feelslike,
                precipprob: precipprob,
                uvindex: uvindex,
                pressure: pressure,
              ),
            ],
          ),
        ),
      ),
    );

    expect(find.text(AppUtils.formatDate(datetime)), findsOneWidget);
    expect(find.text(timezone), findsOneWidget);
    expect(find.text('$temp°C'), findsOneWidget);
    expect(find.text(AppUtils.translateCombinedWeatherConditions(conditions)), findsOneWidget);

    expect(find.text("Humedad"), findsOneWidget);
    expect(find.text('$humidity%'), findsOneWidget);
    expect(find.text("Viento"), findsOneWidget);
    expect(find.text('$windspeed km/h'), findsOneWidget);
    expect(find.text("Sensación"), findsOneWidget);
    expect(find.text('$feelslike°C'), findsOneWidget);
    expect(find.text("Lluvia"), findsOneWidget);
    expect(find.text('$precipprob%'), findsOneWidget);
    expect(find.text("Índice UV"), findsOneWidget);
    expect(find.text('$uvindex'), findsOneWidget);
    expect(find.text("Presión"), findsOneWidget);
    expect(find.text('$pressure hPa'), findsOneWidget);
  });
}
