import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:weather/core/config/index.dart' show AppUtils;
import 'package:weather/domain/core/entities/index.dart' show Day;
import 'package:weather/presentation/core/widgets/index.dart' show WeatherDayCard;

void main() {
  setUpAll(() async {
    await initializeDateFormatting('es_ES', null);
  });

  testWidgets('WeatherDayCard muestra los datos correctamente', (WidgetTester tester) async {
    final day = Day(
      datetime: "2023-10-01",
      conditions: "Clear",
      temp: 25.0,
      tempmax: 30.0,
      tempmin: 20.0,
      feelslike: 26.0,
      humidity: 50.0,
      windspeed: 10.0,
      winddir: 180.0,
      precip: 0.0,
      precipprob: 0.0,
      sunrise: "06:00",
      sunset: "18:00",
      cloudcover: 0.0,
      datetimeEpoch: 0,
      description: '',
      dew: 0.0,
      feelslikemax: 0.0,
      feelslikemin: 0.0,
      hours: [],
      icon: '',
      moonphase: 0.0,
      precipcover: 0.0,
      preciptype: [],
      pressure: 0.0,
      severerisk: 0.0,
      snow: 0.0,
      snowdepth: 0.0,
      solarenergy: 0.0,
      solarradiation: 0.0,
      source: '',
      stations: [],
      sunriseEpoch: 0,
      sunsetEpoch: 0,
      uvindex: 0.0,
      visibility: 0.0,
      windgust: 0.0,
    );

    await tester.pumpWidget(MaterialApp(home: Scaffold(body: WeatherDayCard(day: day))));

    expect(find.text(AppUtils.formatDate(day.datetime)), findsOneWidget);
    expect(
      find.byWidgetPredicate(
        (widget) =>
            widget is RichText &&
            widget.text.toPlainText().contains(
              '${day.temp}°C (Máx: ${day.tempmax}°C / Mín: ${day.tempmin}°C)',
            ),
      ),
      findsOneWidget,
    );
    expect(
      find.byWidgetPredicate(
        (widget) => widget is RichText && widget.text.toPlainText().contains('${day.feelslike}°C'),
      ),
      findsOneWidget,
    );
    expect(
      find.byWidgetPredicate(
        (widget) => widget is RichText && widget.text.toPlainText().contains('${day.humidity}%'),
      ),
      findsOneWidget,
    );
    expect(
      find.byWidgetPredicate(
        (widget) =>
            widget is RichText &&
            widget.text.toPlainText().contains(
              '${day.windspeed} km/h (Dirección: ${day.winddir}°)',
            ),
      ),
      findsOneWidget,
    );
    expect(
      find.byWidgetPredicate(
        (widget) =>
            widget is RichText &&
            widget.text.toPlainText().contains(
              '${day.precip} mm (Probabilidad: ${day.precipprob}%)',
            ),
      ),
      findsOneWidget,
    );
    expect(
      find.byWidgetPredicate(
        (widget) => widget is RichText && widget.text.toPlainText().contains(day.sunrise),
      ),
      findsOneWidget,
    );
    expect(
      find.byWidgetPredicate(
        (widget) => widget is RichText && widget.text.toPlainText().contains(day.sunset),
      ),
      findsOneWidget,
    );
  });
}
