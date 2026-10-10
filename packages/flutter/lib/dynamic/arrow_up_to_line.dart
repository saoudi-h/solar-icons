// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `arrow-up-to-line` icon in every style.
///
/// Prefer the static widgets (e.g. `ArrowUpToLineLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class ArrowUpToLineIcon extends StatelessWidget {
  /// Creates the `arrow-up-to-line` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const ArrowUpToLineIcon({
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
    name: 'arrow-up-to-line',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M4 3.75C3.58579 3.75 3.25 3.41421 3.25 3C3.25 2.58579 3.58579 2.25 4 2.25L20 2.25C20.4142 2.25 20.75 2.58579 20.75 3C20.75 3.41421 20.4142 3.75 20 3.75L4 3.75Z" fill="currentColor"/>
<path d="M12 21.75C11.5858 21.75 11.25 21.4142 11.25 21L11.25 9.93164L8.55371 12.8809C8.27429 13.1865 7.79985 13.208 7.49414 12.9287C7.18851 12.6493 7.167 12.1748 7.44629 11.8691L11.4463 7.49414C11.5884 7.33877 11.7895 7.25 12 7.25C12.2105 7.25003 12.4116 7.33876 12.5537 7.49414L16.5537 11.8691C16.8329 12.1748 16.8114 12.6493 16.5059 12.9287C16.2002 13.208 15.7257 13.1864 15.4463 12.8809L12.75 9.93164L12.75 21C12.75 21.4142 12.4142 21.7499 12 21.75Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'arrow-up-to-line',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M4 2.25C3.58579 2.25 3.25 2.58579 3.25 3C3.25 3.41421 3.58579 3.75 4 3.75L20 3.75C20.4142 3.75 20.75 3.41421 20.75 3C20.75 2.58579 20.4142 2.25 20 2.25L4 2.25Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M11.2499 21L11.2499 9.93164L8.55361 12.8809C8.27418 13.1865 7.79975 13.208 7.49404 12.9287C7.18841 12.6493 7.1669 12.1748 7.44619 11.8691L11.4462 7.49414C11.5883 7.33874 11.7893 7.25 11.9999 7.25C12.2105 7.25 12.4115 7.33874 12.5536 7.49414L16.5536 11.8691C16.8329 12.1749 16.8114 12.6493 16.5058 12.9287C16.2001 13.208 15.7256 13.1865 15.4462 12.8809L12.7499 9.93164L12.7499 21C12.7499 21.4142 12.4141 21.75 11.9999 21.75C11.5857 21.75 11.2499 21.4142 11.2499 21Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'arrow-up-to-line',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M12 21L12 8M8 12.375L12 8L16 12.375" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M20 3L16 3M12 3L4 3" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'arrow-up-to-line',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M4 3L20 3" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M12 21L12 8M8 12.375L12 8L16 12.375" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'arrow-up-to-line',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M4 3L20 3" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M12 21L12 8M8 12.375L12 8L16 12.375" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'arrow-up-to-line',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M4 3.75C3.58579 3.75 3.25 3.41421 3.25 3C3.25 2.58579 3.58579 2.25 4 2.25L20 2.25C20.4142 2.25 20.75 2.58579 20.75 3C20.75 3.41421 20.4142 3.75 20 3.75L4 3.75Z" fill="currentColor"/>
<path d="M12 21.75C11.5858 21.75 11.25 21.4142 11.25 21L11.25 9.93164L8.55371 12.8809C8.27429 13.1865 7.79985 13.208 7.49414 12.9287C7.18851 12.6493 7.167 12.1748 7.44629 11.8691L11.4463 7.49414C11.5884 7.33877 11.7895 7.25 12 7.25C12.2105 7.25003 12.4116 7.33876 12.5537 7.49414L16.5537 11.8691C16.8329 12.1748 16.8114 12.6493 16.5059 12.9287C16.2002 13.208 15.7257 13.1864 15.4463 12.8809L12.75 9.93164L12.75 21C12.75 21.4142 12.4142 21.7499 12 21.75Z" fill="currentColor"/>''',
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
