// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `list-minus-minimalistic` icon in every style.
///
/// Prefer the static widgets (e.g. `ListMinusMinimalisticLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class ListMinusMinimalisticIcon extends StatelessWidget {
  /// Creates the `list-minus-minimalistic` icon.
  ///
  /// [style] wins, then [SolarProvider], then [SolarIconStyle.linear].
  const ListMinusMinimalisticIcon({
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
    name: 'list-minus-minimalistic',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M21 17.25C21.4142 17.25 21.75 17.5858 21.75 18C21.75 18.4142 21.4142 18.75 21 18.75H14C13.5858 18.75 13.25 18.4142 13.25 18C13.25 17.5858 13.5858 17.25 14 17.25H21Z" fill="currentColor"/>
<path d="M11 15.25C11.4142 15.25 11.75 15.5858 11.75 16C11.75 16.4142 11.4142 16.75 11 16.75H3C2.58579 16.75 2.25 16.4142 2.25 16C2.25 15.5858 2.58579 15.25 3 15.25H11Z" fill="currentColor"/>
<path d="M21 10.25C21.4142 10.25 21.75 10.5858 21.75 11C21.75 11.4142 21.4142 11.75 21 11.75H3C2.58579 11.75 2.25 11.4142 2.25 11C2.25 10.5858 2.58579 10.25 3 10.25H21Z" fill="currentColor"/>
<path d="M21 5.25C21.4142 5.25 21.75 5.58579 21.75 6C21.75 6.41421 21.4142 6.75 21 6.75H3C2.58578 6.75 2.25 6.41421 2.25 6C2.25 5.58579 2.58578 5.25 3 5.25H21Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'list-minus-minimalistic',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M21 17.25C21.4142 17.25 21.75 17.5858 21.75 18C21.75 18.4142 21.4142 18.75 21 18.75H14C13.5858 18.75 13.25 18.4142 13.25 18C13.25 17.5858 13.5858 17.25 14 17.25H21Z" fill="currentColor"/>''',
    accent: r'''<g opacity="0.5">
<path d="M11 15.25C11.4142 15.25 11.75 15.5858 11.75 16C11.75 16.4142 11.4142 16.75 11 16.75H3C2.58579 16.75 2.25 16.4142 2.25 16C2.25 15.5858 2.58579 15.25 3 15.25H11Z" fill="currentColor"/>
<path d="M21 10.25C21.4142 10.25 21.75 10.5858 21.75 11C21.75 11.4142 21.4142 11.75 21 11.75H3C2.58579 11.75 2.25 11.4142 2.25 11C2.25 10.5858 2.58579 10.25 3 10.25H21Z" fill="currentColor"/>
<path d="M21 5.25C21.4142 5.25 21.75 5.58579 21.75 6C21.75 6.41421 21.4142 6.75 21 6.75H3C2.58578 6.75 2.25 6.41421 2.25 6C2.25 5.58579 2.58578 5.25 3 5.25H21Z" fill="currentColor"/>
</g>''',
  );

  static const broken = SolarIconData(
    name: 'list-minus-minimalistic',
    style: SolarIconStyle.broken,
    body: r'''<path d="M11 16H3" stroke="currentColor" stroke-linecap="round"/>
<path d="M3 6L14.1176 6M21 6L18.6176 6" stroke="currentColor" stroke-linecap="round"/>
<path d="M21 11L9.88235 11M3 11H5.38235" stroke="currentColor" stroke-linecap="round"/>
<path d="M14 18H21" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'list-minus-minimalistic',
    style: SolarIconStyle.linear,
    body: r'''<path d="M21 6L3 6" stroke="currentColor" stroke-linecap="round"/>
<path d="M21 11L3 11" stroke="currentColor" stroke-linecap="round"/>
<path d="M11 16H3" stroke="currentColor" stroke-linecap="round"/>
<path d="M14 18H21" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'list-minus-minimalistic',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M14 18H21" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M21 6L3 6" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M21 11L3 11" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M11 16H3" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'list-minus-minimalistic',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M21 17.25C21.4142 17.25 21.75 17.5858 21.75 18C21.75 18.4142 21.4142 18.75 21 18.75H14C13.5858 18.75 13.25 18.4142 13.25 18C13.25 17.5858 13.5858 17.25 14 17.25H21Z" fill="currentColor"/>
<path d="M11 15.25C11.4142 15.25 11.75 15.5858 11.75 16C11.75 16.4142 11.4142 16.75 11 16.75H3C2.58579 16.75 2.25 16.4142 2.25 16C2.25 15.5858 2.58579 15.25 3 15.25H11Z" fill="currentColor"/>
<path d="M21 10.25C21.4142 10.25 21.75 10.5858 21.75 11C21.75 11.4142 21.4142 11.75 21 11.75H3C2.58579 11.75 2.25 11.4142 2.25 11C2.25 10.5858 2.58579 10.25 3 10.25H21Z" fill="currentColor"/>
<path d="M21 5.25C21.4142 5.25 21.75 5.58579 21.75 6C21.75 6.41421 21.4142 6.75 21 6.75H3C2.58578 6.75 2.25 6.41421 2.25 6C2.25 5.58579 2.58578 5.25 3 5.25H21Z" fill="currentColor"/>''',
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
