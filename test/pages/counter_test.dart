import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mi_bloc/counter/delivery/main.dart';

void main() {
  Widget testWidget = const MediaQuery(
    data: MediaQueryData(),
    child: MaterialApp(
      home: CounterPage(),
    ),
  );

  testWidgets('Counter Page loaded', (WidgetTester widgetTester) async {
    await widgetTester.pumpWidget(testWidget);

    expect(find.text('Counter'), findsOneWidget);

    expect(find.widgetWithIcon(TextButton, Icons.plus_one), findsOneWidget);
    expect(find.widgetWithIcon(TextButton, Icons.exposure_minus_1),
        findsOneWidget);
    expect(find.widgetWithText(TextButton, 'Reset'), findsOneWidget);
  });

  testWidgets('+1 clicked', (WidgetTester widgetTester) async {
    await widgetTester.pumpWidget(testWidget);
    Finder plusOneButton = find.widgetWithIcon(TextButton, Icons.plus_one);
    expect(find.text('0'), findsOneWidget);

    expect(plusOneButton, findsOneWidget);
    await widgetTester.tap(plusOneButton);
    await widgetTester.pump(const Duration(seconds: 1));
    expect(find.text('1'), findsOneWidget);
  });

  testWidgets('-1 clicked', (WidgetTester widgetTester) async {
    await widgetTester.pumpWidget(testWidget);
    Finder minusOneButton =
        find.widgetWithIcon(TextButton, Icons.exposure_minus_1);
    expect(find.text('0'), findsOneWidget);

    expect(minusOneButton, findsOneWidget);
    await widgetTester.tap(minusOneButton);
    await widgetTester.pump(const Duration(seconds: 1));
    expect(find.text('-1'), findsOneWidget);
  });

  testWidgets('+1 then reset clicked', (WidgetTester widgetTester) async {
    await widgetTester.pumpWidget(testWidget);
    Finder minusOneButton = find.widgetWithIcon(TextButton, Icons.plus_one);

    Finder resetButton = find.widgetWithText(TextButton, 'Reset');

    expect(find.text('0'), findsOneWidget);

    expect(minusOneButton, findsOneWidget);
    await widgetTester.tap(minusOneButton);
    await widgetTester.pump(const Duration(seconds: 1));
    expect(find.text('1'), findsOneWidget);

    await widgetTester.tap(resetButton);
    await widgetTester.pump(const Duration(seconds: 1));
    expect(find.text('0'), findsOneWidget);
  });

  testWidgets('-1 then reset clicked', (WidgetTester widgetTester) async {
    await widgetTester.pumpWidget(testWidget);
    Finder minusOneButton =
        find.widgetWithIcon(TextButton, Icons.exposure_minus_1);
    Finder resetButton = find.widgetWithText(TextButton, 'Reset');

    expect(find.text('0'), findsOneWidget);

    expect(minusOneButton, findsOneWidget);
    await widgetTester.tap(minusOneButton);
    await widgetTester.pump(const Duration(seconds: 1));
    expect(find.text('-1'), findsOneWidget);

    await widgetTester.tap(resetButton);
    await widgetTester.pump(const Duration(seconds: 1));
    expect(find.text('0'), findsOneWidget);
  });
}
