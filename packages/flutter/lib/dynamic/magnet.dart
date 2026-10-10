// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `magnet` icon in every style.
///
/// Prefer the static widgets (e.g. `MagnetLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class MagnetIcon extends StatelessWidget {
  /// Creates the `magnet` icon.
  ///
  /// [style] defaults to [SolarIconStyle.linear].
  const MagnetIcon({
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
    name: 'magnet',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M16.25 2H13C7.47715 2 3 6.47715 3 12C3 17.5228 7.47715 22 13 22H16.25V17H13C10.2386 17 8 14.7614 8 12C8 9.23858 10.2386 7 13 7H16.25V2Z" fill="currentColor"/>
<path d="M17.75 7H19.5C20.3284 7 21 6.32843 21 5.5V3.5C21 2.67157 20.3284 2 19.5 2H17.75V7Z" fill="currentColor"/>
<path d="M17.75 17V22H19.5C20.3284 22 21 21.3284 21 20.5V18.5C21 17.6716 20.3284 17 19.5 17H17.75Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'magnet',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M17 2H13C7.47715 2 3 6.47715 3 12C3 17.5228 7.47715 22 13 22H17V17H13C10.2386 17 8 14.7614 8 12C8 9.23858 10.2386 7 13 7H17V2Z" fill="currentColor"/>''',
    accent: r'''<g opacity="0.5">
<path d="M17 7H19.5C20.3284 7 21 6.32843 21 5.5V3.5C21 2.67157 20.3284 2 19.5 2H17V7Z" fill="currentColor"/>
<path d="M17 17V22H19.5C20.3284 22 21 21.3284 21 20.5V18.5C21 17.6716 20.3284 17 19.5 17H17Z" fill="currentColor"/>
</g>''',
  );

  static const broken = SolarIconData(
    name: 'magnet',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M17 2H19.5C20.3284 2 21 2.67157 21 3.5V5.5C21 6.32843 20.3284 7 19.5 7H17M17 2H13C11.5778 2 10.2249 2.2969 9 2.83209M17 2V7M17 7H13C10.2386 7 8 9.23858 8 12C8 13.1258 8.37209 14.1647 9 15.0005M17 17H19.5C20.3284 17 21 17.6716 21 18.5V20.5C21 21.3284 20.3284 22 19.5 22H17M17 17H13M17 17V22M17 22H13C7.47715 22 3 17.5228 3 12C3 9.74835 3.74418 7.67051 5 5.99903" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'magnet',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M17 2H19.5C20.3284 2 21 2.67157 21 3.5V5.5C21 6.32843 20.3284 7 19.5 7H17M17 2H13C7.47715 2 3 6.47715 3 12C3 17.5228 7.47715 22 13 22H17M17 2V7M17 7H13C10.2386 7 8 9.23858 8 12C8 14.7614 10.2386 17 13 17H17M17 17H19.5C20.3284 17 21 17.6716 21 18.5V20.5C21 21.3284 20.3284 22 19.5 22H17M17 17V22" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'magnet',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M21 18.5V20.5C21 21.3284 20.3284 22 19.5 22H17H13C7.47715 22 3 17.5228 3 12C3 6.47715 7.47715 2 13 2H17H19.5C20.3284 2 21 2.67157 21 3.5V5.5C21 6.32843 20.3284 7 19.5 7H17H13C10.2386 7 8 9.23858 8 12C8 14.7614 10.2386 17 13 17H17H19.5C20.3284 17 21 17.6716 21 18.5Z" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M17 2V7M17 17V22" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'magnet',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M13 2.75C7.89137 2.75 3.75 6.89137 3.75 12C3.75 17.1086 7.89137 21.25 13 21.25H16.25V17.75H13C9.82436 17.75 7.25 15.1756 7.25 12C7.25 8.82436 9.82436 6.25 13 6.25H16.25V2.75H13ZM17.75 2.75V6.25H19.5C19.9142 6.25 20.25 5.91421 20.25 5.5V3.5C20.25 3.08579 19.9142 2.75 19.5 2.75H17.75ZM17.75 17.75V21.25H19.5C19.9142 21.25 20.25 20.9142 20.25 20.5V18.5C20.25 18.0858 19.9142 17.75 19.5 17.75H17.75ZM2.25 12C2.25 6.06294 7.06294 1.25 13 1.25H19.5C20.7426 1.25 21.75 2.25736 21.75 3.5V5.5C21.75 6.74264 20.7426 7.75 19.5 7.75H13C10.6528 7.75 8.75 9.65279 8.75 12C8.75 14.3472 10.6528 16.25 13 16.25H19.5C20.7426 16.25 21.75 17.2574 21.75 18.5V20.5C21.75 21.7426 20.7426 22.75 19.5 22.75H13C7.06294 22.75 2.25 17.9371 2.25 12Z" fill="currentColor"/>''',
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
