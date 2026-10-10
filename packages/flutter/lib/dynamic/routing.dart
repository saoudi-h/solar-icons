// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `routing` icon in every style.
///
/// Prefer the static widgets (e.g. `RoutingLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class RoutingIcon extends StatelessWidget {
  /// Creates the `routing` icon.
  ///
  /// [style] defaults to [SolarIconStyle.linear].
  const RoutingIcon({
    super.key,
    this.style = SolarIconStyle.linear,
    this.size,
    this.color,
    this.strokeWidth,
    this.secondaryColor,
    this.secondaryOpacity,
    this.semanticLabel,
    this.isolated = false,
  });

  /// Style to draw.
  final SolarIconStyle style;

  /// Width and height.
  final double? size;

  /// Primary color.
  final Color? color;

  /// Stroke width for stroked styles.
  final double? strokeWidth;

  /// Accent color for duotone styles.
  final Color? secondaryColor;

  /// Accent opacity for duotone styles, from 0 to 1.
  final double? secondaryOpacity;

  /// Accessibility label.
  final String? semanticLabel;

  /// When true, ignores [SolarProvider] and [IconTheme].
  final bool isolated;

  static const bold = SolarIconData(
    name: 'routing',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M16.5 4.25C18.8472 4.25 20.75 6.15279 20.75 8.5C20.75 10.8472 18.8472 12.75 16.5 12.75H7.5C5.98122 12.75 4.75 13.9812 4.75 15.5C4.75 17.0188 5.98122 18.25 7.5 18.25H18.1893L17.4697 17.5303C17.1768 17.2374 17.1768 16.7626 17.4697 16.4697C17.7626 16.1768 18.2374 16.1768 18.5303 16.4697L20.5303 18.4697C20.8232 18.7626 20.8232 19.2374 20.5303 19.5303L18.5303 21.5303C18.2374 21.8232 17.7626 21.8232 17.4697 21.5303C17.1768 21.2374 17.1768 20.7626 17.4697 20.4697L18.1893 19.75H7.5C5.15279 19.75 3.25 17.8472 3.25 15.5C3.25 13.1528 5.15279 11.25 7.5 11.25H16.5C18.0188 11.25 19.25 10.0188 19.25 8.5C19.25 6.98122 18.0188 5.75 16.5 5.75H7.85462C7.55793 6.48296 6.83934 7 6 7C4.89543 7 4 6.10457 4 5C4 3.89543 4.89543 3 6 3C6.83934 3 7.55793 3.51704 7.85462 4.25H16.5Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'routing',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M17.4697 16.4697C17.7626 16.1768 18.2374 16.1768 18.5303 16.4697L20.5303 18.4697C20.8232 18.7626 20.8232 19.2374 20.5303 19.5303L18.5303 21.5303C18.2374 21.8232 17.7626 21.8232 17.4697 21.5303C17.1768 21.2374 17.1768 20.7626 17.4697 20.4697L18.9395 19L17.4697 17.5303C17.1768 17.2374 17.1768 16.7626 17.4697 16.4697Z" fill="currentColor"/>
<path d="M6 3C7.10457 3 8 3.89543 8 5C8 6.10457 7.10457 7 6 7C4.89543 7 4 6.10457 4 5C4 3.89543 4.89543 3 6 3Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M7.85462 5.75C7.94837 5.51839 8 5.26523 8 5C8 4.73477 7.94837 4.48161 7.85462 4.25H16.5C18.8472 4.25 20.75 6.15279 20.75 8.5C20.75 10.8472 18.8472 12.75 16.5 12.75H7.5C5.98122 12.75 4.75 13.9812 4.75 15.5C4.75 17.0188 5.98122 18.25 7.5 18.25H18.1893L18.9393 19L18.1893 19.75H7.5C5.15279 19.75 3.25 17.8472 3.25 15.5C3.25 13.1528 5.15279 11.25 7.5 11.25H16.5C18.0188 11.25 19.25 10.0188 19.25 8.5C19.25 6.98122 18.0188 5.75 16.5 5.75H7.85462Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'routing',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M18 21L20 19L18 17M20 19H13.75M8 5H11M10 19H7.5C5.567 19 4 17.433 4 15.5C4 13.567 5.567 12 7.5 12H16.5C18.433 12 20 10.433 20 8.5C20 6.567 18.433 5 16.5 5H15" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<circle cx="6" cy="5" r="2" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'routing',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M20 19H7.5C5.567 19 4 17.433 4 15.5C4 13.567 5.567 12 7.5 12H16.5C18.433 12 20 10.433 20 8.5C20 6.567 18.433 5 16.5 5H8M18 21L20 19L18 17" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<circle cx="6" cy="5" r="2" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'routing',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M18 17L20 19L18 21" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<circle cx="6" cy="5" r="2" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M20 19H7.5C5.567 19 4 17.433 4 15.5C4 13.567 5.567 12 7.5 12H16.5C18.433 12 20 10.433 20 8.5C20 6.567 18.433 5 16.5 5H8" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'routing',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M6 3.75C5.30964 3.75 4.75 4.30964 4.75 5C4.75 5.69036 5.30964 6.25 6 6.25C6.69036 6.25 7.25 5.69036 7.25 5C7.25 4.30964 6.69036 3.75 6 3.75ZM3.25 5C3.25 3.48122 4.48122 2.25 6 2.25C7.25878 2.25 8.32002 3.09575 8.64648 4.25H16.5C18.8472 4.25 20.75 6.15279 20.75 8.5C20.75 10.8472 18.8472 12.75 16.5 12.75H7.5C5.98122 12.75 4.75 13.9812 4.75 15.5C4.75 17.0188 5.98122 18.25 7.5 18.25H18.1893L17.4697 17.5303C17.1768 17.2374 17.1768 16.7626 17.4697 16.4697C17.7626 16.1768 18.2374 16.1768 18.5303 16.4697L20.5303 18.4697C20.8232 18.7626 20.8232 19.2374 20.5303 19.5303L18.5303 21.5303C18.2374 21.8232 17.7626 21.8232 17.4697 21.5303C17.1768 21.2374 17.1768 20.7626 17.4697 20.4697L18.1893 19.75H7.5C5.15279 19.75 3.25 17.8472 3.25 15.5C3.25 13.1528 5.15279 11.25 7.5 11.25H16.5C18.0188 11.25 19.25 10.0188 19.25 8.5C19.25 6.98122 18.0188 5.75 16.5 5.75H8.64648C8.32002 6.90425 7.25878 7.75 6 7.75C4.48122 7.75 3.25 6.51878 3.25 5Z" fill="currentColor"/>''',
  );

  SolarIconData get _data => switch (style) {
    SolarIconStyle.bold => bold,
    SolarIconStyle.boldDuotone => boldDuotone,
    SolarIconStyle.broken => broken,
    SolarIconStyle.linear => linear,
    SolarIconStyle.lineDuotone => lineDuotone,
    SolarIconStyle.outline => outline,
  };

  @override
  Widget build(BuildContext context) {
    return SolarIcon(
      _data,
      size: size,
      color: color,
      strokeWidth: strokeWidth,
      secondaryColor: secondaryColor,
      secondaryOpacity: secondaryOpacity,
      semanticLabel: semanticLabel,
      isolated: isolated,
    );
  }
}
