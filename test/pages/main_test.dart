import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mi_bloc/main/delivery/main.dart';

void main() {
  Widget testWidget = const MediaQuery(
    data: MediaQueryData(),
    child: MaterialApp(
      home: MainPage(),
    ),
  );
  testWidgets('Main Page loaded', (WidgetTester tester) async {
    await tester.pumpWidget(testWidget);

    expect(find.text('Main'), findsOneWidget);

    expect(find.widgetWithText(TextButton, 'Counter'), findsOneWidget);
  });
}
