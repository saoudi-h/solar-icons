import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_solar_icons/flutter_solar_icons.dart';

/// Composed SVG string of the single rendered icon.
Future<String> renderedSvg(WidgetTester tester) async {
  await tester.pump();
  final svg = tester.widget<SvgPicture>(find.byType(SvgPicture));
  final loader = svg.bytesLoader as SvgStringLoader;
  return loader.provideSvg(null);
}

Future<void> pumpIcon(WidgetTester tester, Widget icon) {
  return tester.pumpWidget(
    Directionality(textDirection: TextDirection.ltr, child: icon),
  );
}

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
    await pumpIcon(
      tester,
      const Column(
        children: [
          ChatUnreadIcon(),
          ChatUnreadLinearIcon(),
        ],
      ),
    );
    await tester.pump();

    expect(find.byType(ChatSquareUnreadIcon), findsOneWidget);
    expect(find.byType(ChatSquareUnreadLinearIcon), findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  testWidgets('dynamic widgets inherit the provider style', (tester) async {
    await pumpIcon(
      tester,
      const SolarProvider(
        style: SolarIconStyle.bold,
        child: HeartIcon(color: Color(0xFF112233)),
      ),
    );

    // Bold heart is filled; linear heart is stroked.
    expect(await renderedSvg(tester), contains('fill="#112233"'));
    expect(tester.takeException(), isNull);
  });

  testWidgets('an explicit style wins over the provider', (tester) async {
    await pumpIcon(
      tester,
      const SolarProvider(
        style: SolarIconStyle.bold,
        child: HeartIcon(
          style: SolarIconStyle.linear,
          color: Color(0xFF112233),
        ),
      ),
    );

    final svg = await renderedSvg(tester);
    expect(svg, contains('stroke="#112233"'));
    expect(svg, isNot(contains('fill="#112233"')));
    expect(tester.takeException(), isNull);
  });

  testWidgets('dynamic widgets default to linear without a provider', (tester) async {
    await pumpIcon(
      tester,
      const HeartIcon(color: Color(0xFF112233)),
    );

    expect(await renderedSvg(tester), contains('stroke="#112233"'));
    expect(tester.takeException(), isNull);
  });

  testWidgets('isolated dynamic widgets ignore the provider style', (tester) async {
    await pumpIcon(
      tester,
      const SolarProvider(
        style: SolarIconStyle.bold,
        child: HeartIcon(
          isolated: true,
          color: Color(0xFF112233),
        ),
      ),
    );

    expect(await renderedSvg(tester), contains('stroke="#112233"'));
    expect(tester.takeException(), isNull);
  });
}
