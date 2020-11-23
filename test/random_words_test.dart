import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:startup_namer/random_words.dart';
import 'test_helper.dart';

void main() {
  testWidgets('Finds title', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(RandomWords()));

    expect(find.text('Startup Name Generator'), findsOneWidget);
  });

  testWidgets('Finds button to favorite a startup name',
      (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(RandomWords()));

    expect(find.byType(IconButton), findsOneWidget);
  });

  testWidgets('Changes the icon of a startup name when the user favorite it',
      (tester) async {
    await tester.pumpWidget(buildTestableWidget(RandomWords()));

    await tester.tap(find.byIcon(Icons.favorite_border).first);
    await tester.pump();

    expect(find.byIcon(Icons.favorite), findsOneWidget);
  });
}
