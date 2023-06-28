// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:unit_testing/controller.dart';

import 'package:unit_testing/main.dart';

void main() {
  late MainController controller;
  setUp(() {
    controller = MainController();
  });
  test("expect to be 0", () {
    // Arrange

    // Act
    var result = controller.number.value;
    // Assert
    expect(result, 0);
  });
  test("expect to be 5", () {
    // Arrange

    // Act
    controller.five();
    var result = controller.number.value;
    // Assert
    expect(result, 5);
  });
  test("expect to be 10", () {
    // Arrange

    // Act
    controller.ten();
    var result = controller.number.value;
    // Assert
    expect(result, 10);
  });
  //
  // testWidgets('Counter increments smoke test', (WidgetTester tester) async {
  //   // Build our app and trigger a frame.
  //   await tester.pumpWidget(const MyApp());
  //   // // Verify that our counter starts at 0.
  //   // expect(find.text('0'), findsOneWidget);
  //   // expect(find.text('1'), findsNothing);

  //   // // Tap the '+' icon and trigger a frame.
  //   // await tester.tap(find.byIcon(Icons.add));
  //   // await tester.pump();

  //   // // Verify that our counter has incremented.
  //   // expect(find.text('0'), findsNothing);
  //   // expect(find.text('1'), findsOneWidget);
  // });
}
