import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:solar_icons/solar_icons.dart';

void main() {
  testWidgets('static widgets draw one style each', (tester) async {
    await tester.pumpWidget(
      const Directionality(
        textDirection: TextDirection.ltr,
        child: Column(
          children: [
            HomeLinearIcon(),
            ArrowRightBoldIcon(),
            ChatSquareUnreadLineDuotoneIcon(
              secondaryColor: Color(0xFF3366FF),
            ),
          ],
        ),
      ),
    );
    await tester.pump();

    expect(find.byType(HomeLinearIcon), findsOneWidget);
    expect(find.byType(ArrowRightBoldIcon), findsOneWidget);
    expect(find.byType(ChatSquareUnreadLineDuotoneIcon), findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  testWidgets('static widgets expose their payload for composition', (tester) async {
    expect(HomeLinearIcon.data.name, 'home');
    expect(HomeLinearIcon.data.style, SolarIconStyle.linear);
    expect(HomeLinearIcon.data.accent, isNull);
    expect(ChatSquareUnreadLineDuotoneIcon.data.accent, isNotNull);
  });

  testWidgets('dynamic widgets draw every style', (tester) async {
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

  testWidgets('deprecated aliases build the canonical widgets', (tester) async {
    await tester.pumpWidget(
      const Directionality(
        textDirection: TextDirection.ltr,
        child: Column(
          children: [
            ChatUnreadIcon(),
            ChatUnreadLinearIcon(),
          ],
        ),
      ),
    );
    await tester.pump();

    expect(find.byType(ChatSquareUnreadIcon), findsOneWidget);
    expect(find.byType(ChatSquareUnreadLinearIcon), findsOneWidget);
    expect(tester.takeException(), isNull);
  });
}
