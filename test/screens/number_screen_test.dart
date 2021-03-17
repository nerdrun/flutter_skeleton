import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:skeleton/injector.dart';
import 'package:skeleton/screens/number_screen.dart';

void main() {
  setUpAll(() async {
    await setUpInjector();
  });


  group('숫자 더하기 화면 테스트', () {
    testWidgets('NumberScreen 화면에 0이 표시됩니다.', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(home: NumberScreen())
      );
      expect(find.text('0'), findsOneWidget);
    });

    testWidgets('key button을 tap하면 1이 표시됩니다.', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(home: NumberScreen())
      );

      Finder finder = find.byKey(Key('button'));
      await tester.tap(finder);
      await tester.pump();

      expect(find.text('1'), findsOneWidget);
    });
  });
}