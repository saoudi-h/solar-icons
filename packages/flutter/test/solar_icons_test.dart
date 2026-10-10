import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:solar_icons/solar_icons.dart';

void main() {
  testWidgets('generated icons draw every style', (tester) async {
    await tester.pumpWidget(
      const Directionality(
        textDirection: TextDirection.ltr,
        child: Column(
          children: [
            HomeIcon(),
            ArrowRightIcon(style: SolarIconStyle.bold),
            ArrowRightIcon(style: SolarIconStyle.boldDuotone),
            ArrowRightIcon(style: SolarIconStyle.lineDuotone),
            ArrowRightIcon(style: SolarIconStyle.broken),
            ArrowRightIcon(style: SolarIconStyle.outline),
          ],
        ),
      ),
    );
    await tester.pump();

    expect(find.byType(HomeIcon), findsOneWidget);
    expect(find.byType(ArrowRightIcon), findsNWidgets(5));
    expect(tester.takeException(), isNull);
  });
}
