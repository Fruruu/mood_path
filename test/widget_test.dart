// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:mood_path/main.dart';

void main() {
  testWidgets('App loads and navigates to journal screen', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify that the home screen is displayed with the expected button.
    expect(find.text('Home'), findsOneWidget);
    expect(find.text('Go to Journal Screen'), findsOneWidget);

    // Tap the button to navigate to journal screen.
    await tester.tap(find.text('Go to Journal Screen'));
    await tester.pumpAndSettle();

    // Verify that we've navigated to the journal screen.
    expect(find.text('Journal Placeholder'), findsOneWidget);
    expect(find.text('This is just a placeholder screen.'), findsOneWidget);
  });
}
