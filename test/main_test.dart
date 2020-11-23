import 'package:flutter_test/flutter_test.dart';

import 'package:startup_namer/main.dart';
import 'package:startup_namer/random_words.dart';

void main() {
  testWidgets('Finds the RandomWords widget', (WidgetTester tester) async {
    await tester.pumpWidget((MyApp()));

    expect(find.byType(RandomWords), findsOneWidget);
  });
}
