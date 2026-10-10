import 'package:flutter_test/flutter_test.dart';
import 'package:solar_icons/icons.dart';
import 'package:solar_icons_example/main.dart';

void main() {
  testWidgets('shows a home icon in the gallery', (tester) async {
    await tester.pumpWidget(const SolarIconsExampleApp());

    expect(find.text('Solar Icons'), findsOneWidget);
    expect(find.byType(HomeIcon), findsOneWidget);
    expect(tester.takeException(), isNull);
  });
}
