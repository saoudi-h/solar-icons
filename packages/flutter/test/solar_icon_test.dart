import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:solaricons_flutter/solaricons_flutter.dart';

void main() {
  const data = SolarIconData(
    name: 'demo',
    style: SolarIconStyle.linear,
    body: '<path d="M4 12H20" stroke="currentColor"/>',
  );

  Future<void> pumpIcon(WidgetTester tester, Widget icon) {
    return tester.pumpWidget(
      Directionality(textDirection: TextDirection.ltr, child: icon),
    );
  }

  testWidgets('uses the provider size and draws an svg', (tester) async {
    await pumpIcon(
      tester,
      const SolarProvider(
        size: 40,
        color: Color(0xFF112233),
        strokeWidth: 2,
        child: SolarIcon(data),
      ),
    );
    await tester.pump();

    final svg = tester.widget<SvgPicture>(find.byType(SvgPicture));
    expect(svg.width, 40);
    expect(svg.height, 40);
    expect(tester.takeException(), isNull);
  });

  testWidgets('an explicit size wins over the provider', (tester) async {
    await pumpIcon(
      tester,
      const SolarProvider(size: 40, child: SolarIcon(data, size: 18)),
    );

    expect(tester.widget<SvgPicture>(find.byType(SvgPicture)).width, 18);
  });

  testWidgets('isolated icons ignore the provider', (tester) async {
    await pumpIcon(
      tester,
      const SolarProvider(size: 40, child: SolarIcon(data, isolated: true)),
    );

    expect(tester.widget<SvgPicture>(find.byType(SvgPicture)).width, 24);
  });

  testWidgets('exposes a semantic label', (tester) async {
    await pumpIcon(tester, const SolarIcon(data, semanticLabel: 'Arrow'));

    expect(find.bySemanticsLabel('Arrow'), findsOneWidget);
  });
}
