// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `list-plus` icon in every style.
///
/// Prefer the static widgets (e.g. `ListPlusLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class ListPlusIcon extends StatelessWidget {
  /// Creates the `list-plus` icon.
  ///
  /// [style] defaults to [SolarIconStyle.linear].
  const ListPlusIcon({
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
    name: 'list-plus',
    style: SolarIconStyle.bold,
    body:
        r'''<path d="M17.5 12.25C17.9142 12.25 18.25 12.5858 18.25 13V15.75H21C21.4142 15.75 21.75 16.0858 21.75 16.5C21.75 16.9142 21.4142 17.25 21 17.25H18.25V20C18.25 20.4142 17.9142 20.75 17.5 20.75C17.0858 20.75 16.75 20.4142 16.75 20V17.25H14C13.5858 17.25 13.25 16.9142 13.25 16.5C13.25 16.0858 13.5858 15.75 14 15.75H16.75V13C16.75 12.5858 17.0858 12.25 17.5 12.25Z" fill="currentColor"/>
<path d="M11 17.25C11.4142 17.25 11.75 17.5858 11.75 18C11.75 18.4142 11.4142 18.75 11 18.75H3C2.58579 18.75 2.25 18.4142 2.25 18C2.25 17.5858 2.58579 17.25 3 17.25H11Z" fill="currentColor"/>
<path d="M11 13.25C11.4142 13.25 11.75 13.5858 11.75 14C11.75 14.4142 11.4142 14.75 11 14.75H3C2.58579 14.75 2.25 14.4142 2.25 14C2.25 13.5858 2.58579 13.25 3 13.25H11Z" fill="currentColor"/>
<path d="M21 9.25C21.4142 9.25 21.75 9.58579 21.75 10C21.75 10.4142 21.4142 10.75 21 10.75H3C2.58579 10.75 2.25 10.4142 2.25 10C2.25 9.58579 2.58579 9.25 3 9.25H21Z" fill="currentColor"/>
<path d="M21 5.25C21.4142 5.25 21.75 5.58579 21.75 6C21.75 6.41421 21.4142 6.75 21 6.75H3C2.58579 6.75 2.25 6.41421 2.25 6C2.25 5.58579 2.58579 5.25 3 5.25H21Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'list-plus',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M16.75 20V17.25H14C13.5858 17.25 13.25 16.9142 13.25 16.5C13.25 16.0858 13.5858 15.75 14 15.75H16.75V13C16.75 12.5858 17.0858 12.25 17.5 12.25C17.9142 12.25 18.25 12.5858 18.25 13V15.75H21C21.4142 15.75 21.75 16.0858 21.75 16.5C21.75 16.9142 21.4142 17.25 21 17.25H18.25V20C18.25 20.4142 17.9142 20.75 17.5 20.75C17.0858 20.75 16.75 20.4142 16.75 20Z" fill="currentColor"/>''',
    accent: r'''<g opacity="0.5">
<path d="M11 17.25C11.4142 17.25 11.75 17.5858 11.75 18C11.75 18.4142 11.4142 18.75 11 18.75H3C2.58579 18.75 2.25 18.4142 2.25 18C2.25 17.5858 2.58579 17.25 3 17.25H11Z" fill="currentColor"/>
<path d="M11 13.25C11.4142 13.25 11.75 13.5858 11.75 14C11.75 14.4142 11.4142 14.75 11 14.75H3C2.58579 14.75 2.25 14.4142 2.25 14C2.25 13.5858 2.58579 13.25 3 13.25H11Z" fill="currentColor"/>
<path d="M21 9.25C21.4142 9.25 21.75 9.58579 21.75 10C21.75 10.4142 21.4142 10.75 21 10.75H3C2.58579 10.75 2.25 10.4142 2.25 10C2.25 9.58579 2.58579 9.25 3 9.25H21Z" fill="currentColor"/>
<path d="M21 5.25C21.4142 5.25 21.75 5.58579 21.75 6C21.75 6.41421 21.4142 6.75 21 6.75H3C2.58579 6.75 2.25 6.41421 2.25 6C2.25 5.58579 2.58579 5.25 3 5.25H21Z" fill="currentColor"/>
</g>''',
  );

  static const broken = SolarIconData(
    name: 'list-plus',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M11 14L3 14" stroke="currentColor" stroke-linecap="round"/>
<path d="M11 18H3" stroke="currentColor" stroke-linecap="round"/>
<path d="M21 16.5L17.5 16.5M17.5 16.5L14 16.5M17.5 16.5L17.5 13M17.5 16.5L17.5 20" stroke="currentColor" stroke-linecap="round"/>
<path d="M3 6L14.1176 6M21 6L18.6176 6" stroke="currentColor" stroke-linecap="round"/>
<path d="M21 10L9.88235 10M3 10H5.38235" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'list-plus',
    style: SolarIconStyle.linear,
    body: r'''<path d="M21 6L3 6" stroke="currentColor" stroke-linecap="round"/>
<path d="M21 10L3 10" stroke="currentColor" stroke-linecap="round"/>
<path d="M11 14L3 14" stroke="currentColor" stroke-linecap="round"/>
<path d="M11 18H3" stroke="currentColor" stroke-linecap="round"/>
<path d="M21 16.5L17.5 16.5M17.5 16.5L14 16.5M17.5 16.5L17.5 13M17.5 16.5L17.5 20" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'list-plus',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M21 16.5L17.5 16.5M17.5 16.5L14 16.5M17.5 16.5L17.5 13M17.5 16.5L17.5 20" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M21 6L3 6" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M21 10L3 10" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M11 14L3 14" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M11 18H3" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'list-plus',
    style: SolarIconStyle.outline,
    body:
        r'''<path d="M17.5 12.25C17.9142 12.25 18.25 12.5858 18.25 13V15.75H21C21.4142 15.75 21.75 16.0858 21.75 16.5C21.75 16.9142 21.4142 17.25 21 17.25H18.25V20C18.25 20.4142 17.9142 20.75 17.5 20.75C17.0858 20.75 16.75 20.4142 16.75 20V17.25H14C13.5858 17.25 13.25 16.9142 13.25 16.5C13.25 16.0858 13.5858 15.75 14 15.75H16.75V13C16.75 12.5858 17.0858 12.25 17.5 12.25Z" fill="currentColor"/>
<path d="M11 17.25C11.4142 17.25 11.75 17.5858 11.75 18C11.75 18.4142 11.4142 18.75 11 18.75H3C2.58579 18.75 2.25 18.4142 2.25 18C2.25 17.5858 2.58579 17.25 3 17.25H11Z" fill="currentColor"/>
<path d="M11 13.25C11.4142 13.25 11.75 13.5858 11.75 14C11.75 14.4142 11.4142 14.75 11 14.75H3C2.58579 14.75 2.25 14.4142 2.25 14C2.25 13.5858 2.58579 13.25 3 13.25H11Z" fill="currentColor"/>
<path d="M21 9.25C21.4142 9.25 21.75 9.58579 21.75 10C21.75 10.4142 21.4142 10.75 21 10.75H3C2.58579 10.75 2.25 10.4142 2.25 10C2.25 9.58579 2.58579 9.25 3 9.25H21Z" fill="currentColor"/>
<path d="M21 5.25C21.4142 5.25 21.75 5.58579 21.75 6C21.75 6.41421 21.4142 6.75 21 6.75H3C2.58579 6.75 2.25 6.41421 2.25 6C2.25 5.58579 2.58579 5.25 3 5.25H21Z" fill="currentColor"/>''',
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
