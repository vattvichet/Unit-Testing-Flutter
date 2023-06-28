import 'package:integration_test/integration_test.dart';
import 'package:unit_testing/main.dart' as app;
import 'package:flutter_test/flutter_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  testWidgets("switch number every 1s", (widgetTester) async {
    app.main();
    await widgetTester.pumpAndSettle();
    // final Finder button = find.byWidge
  });
}
