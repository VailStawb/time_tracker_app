import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:time_tracker_app/common_widgets/custom_elevated_button.dart';

void main() {
  testWidgets('', (WidgetTester tester) async {
    var pressed = false;
    await tester.pumpWidget(
      MaterialApp(
          home: CustomElevatedButton(
        child: Text('Tap me'),
        onPressed: () => pressed = true,
      )),
    );
    final button = find.byType(ElevatedButton);
    expect(button, findsOneWidget);
    expect(find.byType(TextButton), findsNothing);
    expect(find.text('Tap me'), findsOneWidget);
    await tester.tap(button);
    expect(pressed, true);
  });
}
