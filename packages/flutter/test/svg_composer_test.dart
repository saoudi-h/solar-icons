import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:solaricons_flutter/src/solar_icon_data.dart';
import 'package:solaricons_flutter/src/solar_icon_style.dart';
import 'package:solaricons_flutter/src/svg_composer.dart';

void main() {
  const data = SolarIconData(
    name: 'arrow-right',
    style: SolarIconStyle.linear,
    body: '<path d="M4 12H20" stroke="currentColor" stroke-linecap="round"/>',
  );

  test('paints the primary color and injects the stroke width', () {
    final svg = composeSolarSvg(
      data,
      color: const Color(0xFF112233),
      strokeWidth: 2,
      secondaryColor: const Color(0xFF112233),
      secondaryOpacity: 0.5,
    );

    expect(svg, contains('fill="none"'));
    expect(svg, contains('stroke="#112233"'));
    expect(svg, contains('stroke-width="2"/>'));
    expect(svg, isNot(contains('currentColor')));
  });

  test('keeps an explicit stroke width', () {
    final svg = composeSolarSvg(
      const SolarIconData(
        name: 'custom',
        style: SolarIconStyle.linear,
        body: '<path d="M0 0H1" stroke="currentColor" stroke-width="3"/>',
      ),
      color: const Color(0xFF000000),
      strokeWidth: 2,
      secondaryColor: const Color(0xFF000000),
      secondaryOpacity: 0.5,
    );

    expect(svg, contains('stroke-width="3"'));
    expect(svg, isNot(contains('stroke-width="2"')));
  });

  test('leaves filled shapes without stroke', () {
    final svg = composeSolarSvg(
      const SolarIconData(
        name: 'custom',
        style: SolarIconStyle.bold,
        body: '<path d="M0 0H1" fill="currentColor"/>',
      ),
      color: const Color(0xFF112233),
      strokeWidth: 2,
      secondaryColor: const Color(0xFF112233),
      secondaryOpacity: 0.5,
    );

    expect(svg, contains('fill="#112233"'));
    expect(svg, isNot(contains('stroke-width')));
  });

  test('paints the duotone accent separately', () {
    final svg = composeSolarSvg(
      const SolarIconData(
        name: 'arrow-right',
        style: SolarIconStyle.lineDuotone,
        body: '<path d="M14 6L20 12" stroke="currentColor"/>',
        accent: '<path opacity="0.5" d="M4 12H20" stroke="currentColor"/>',
      ),
      color: const Color(0xFF000000),
      strokeWidth: 1.5,
      secondaryColor: const Color(0xFF3366FF),
      secondaryOpacity: 0.4,
    );

    expect(svg, contains('stroke="#3366ff"'));
    expect(svg, contains('opacity="0.4"'));
    expect(svg, contains('stroke="#000000"'));
    expect(svg.indexOf('#3366ff'), lessThan(svg.indexOf('#000000')));
  });

  test('wraps a translucent color in a group', () {
    final svg = composeSolarSvg(
      data,
      color: const Color(0x80112233),
      strokeWidth: 1.5,
      secondaryColor: const Color(0xFF112233),
      secondaryOpacity: 0.5,
    );

    expect(svg, contains('<g opacity="0.502">'));
    expect(svg, contains('stroke="#112233"'));
  });
}
