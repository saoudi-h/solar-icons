// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `wi-fi-none` icon in every style.
///
/// Prefer the static widgets (e.g. `WiFiNoneLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class WiFiNoneIcon extends StatelessWidget {
  /// Creates the `wi-fi-none` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const WiFiNoneIcon({
    super.key,
    this.style,
    this.size,
    this.color,
    this.strokeWidth,
    this.secondaryColor,
    this.secondaryOpacity,
    this.semanticLabel,
    this.isolated = false,
  });

  /// Style to draw. Falls back to [SolarProvider] (unless [isolated]), then [SolarIconStyle.linear].
  final SolarIconStyle? style;

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
    name: 'wi-fi-none',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M12.0176 18.7144C12.4318 18.7144 12.7676 19.0501 12.7676 19.4644C12.7676 19.8786 12.4318 20.2144 12.0176 20.2144C11.6034 20.2144 11.2676 19.8786 11.2676 19.4644C11.2676 19.0501 11.6034 18.7144 12.0176 18.7144Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'wi-fi-none',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M12.0176 18.7144C12.4318 18.7144 12.7676 19.0501 12.7676 19.4644C12.7676 19.8786 12.4318 20.2144 12.0176 20.2144C11.6034 20.2144 11.2676 19.8786 11.2676 19.4644C11.2676 19.0501 11.6034 18.7144 12.0176 18.7144Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'wi-fi-none',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M12.0176 19.4644H12.0177" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'wi-fi-none',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M12.0176 19.4644H12.0177" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'wi-fi-none',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M12.0176 19.4644H12.0177" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'wi-fi-none',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M12.0176 18.7144C12.4318 18.7144 12.7676 19.0501 12.7676 19.4644C12.7676 19.8786 12.4318 20.2144 12.0176 20.2144C11.6034 20.2144 11.2676 19.8786 11.2676 19.4644C11.2676 19.0501 11.6034 18.7144 12.0176 18.7144Z" fill="currentColor"/>''',
  );

  @override
  Widget build(BuildContext context) {
    final SolarIconStyle fallback = isolated
        ? SolarIconStyle.linear
        : SolarProvider.maybeOf(context)?.style ?? SolarIconStyle.linear;
    final SolarIconData data = switch (style ?? fallback) {
      SolarIconStyle.bold => bold,
      SolarIconStyle.boldDuotone => boldDuotone,
      SolarIconStyle.broken => broken,
      SolarIconStyle.linear => linear,
      SolarIconStyle.lineDuotone => lineDuotone,
      SolarIconStyle.outline => outline,
    };
    return SolarIcon(
      data,
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
