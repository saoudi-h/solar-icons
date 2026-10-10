// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `list-cross` icon in every style.
///
/// Prefer the static widgets (e.g. `ListCrossLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class ListCrossIcon extends StatelessWidget {
  /// Creates the `list-cross` icon.
  ///
  /// [style] defaults to [SolarIconStyle.linear].
  const ListCrossIcon({
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
    name: 'list-cross',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M2.25 6C2.25 5.58579 2.58579 5.25 3 5.25H21C21.4142 5.25 21.75 5.58579 21.75 6C21.75 6.41421 21.4142 6.75 21 6.75H3C2.58579 6.75 2.25 6.41421 2.25 6ZM2.25 10C2.25 9.58579 2.58579 9.25 3 9.25H21C21.4142 9.25 21.75 9.58579 21.75 10C21.75 10.4142 21.4142 10.75 21 10.75H3C2.58579 10.75 2.25 10.4142 2.25 10ZM14.4697 12.9697C14.7626 12.6768 15.2374 12.6768 15.5303 12.9697L17.5 14.9393L19.4697 12.9697C19.7626 12.6768 20.2374 12.6768 20.5303 12.9697C20.8232 13.2626 20.8232 13.7374 20.5303 14.0303L18.5607 16L20.5303 17.9697C20.8232 18.2626 20.8232 18.7374 20.5303 19.0303C20.2374 19.3232 19.7626 19.3232 19.4697 19.0303L17.5 17.0607L15.5303 19.0303C15.2374 19.3232 14.7626 19.3232 14.4697 19.0303C14.1768 18.7374 14.1768 18.2626 14.4697 17.9697L16.4393 16L14.4697 14.0303C14.1768 13.7374 14.1768 13.2626 14.4697 12.9697ZM2.25 14C2.25 13.5858 2.58579 13.25 3 13.25H11C11.4142 13.25 11.75 13.5858 11.75 14C11.75 14.4142 11.4142 14.75 11 14.75H3C2.58579 14.75 2.25 14.4142 2.25 14ZM2.25 18C2.25 17.5858 2.58579 17.25 3 17.25H11C11.4142 17.25 11.75 17.5858 11.75 18C11.75 18.4142 11.4142 18.75 11 18.75H3C2.58579 18.75 2.25 18.4142 2.25 18Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'list-cross',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M14.4697 12.9697C14.7626 12.6768 15.2374 12.6768 15.5303 12.9697L17.5 14.9393L19.4697 12.9697C19.7626 12.6768 20.2374 12.6768 20.5303 12.9697C20.8232 13.2626 20.8232 13.7374 20.5303 14.0303L18.5607 16L20.5303 17.9697C20.8232 18.2626 20.8232 18.7374 20.5303 19.0303C20.2374 19.3232 19.7626 19.3232 19.4697 19.0303L17.5 17.0607L15.5303 19.0303C15.2374 19.3232 14.7626 19.3232 14.4697 19.0303C14.1768 18.7374 14.1768 18.2626 14.4697 17.9697L16.4393 16L14.4697 14.0303C14.1768 13.7374 14.1768 13.2626 14.4697 12.9697Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" fill-rule="evenodd" clip-rule="evenodd" d="M2.25 6C2.25 5.58579 2.58579 5.25 3 5.25H21C21.4142 5.25 21.75 5.58579 21.75 6C21.75 6.41421 21.4142 6.75 21 6.75H3C2.58579 6.75 2.25 6.41421 2.25 6ZM2.25 10C2.25 9.58579 2.58579 9.25 3 9.25H21C21.4142 9.25 21.75 9.58579 21.75 10C21.75 10.4142 21.4142 10.75 21 10.75H3C2.58579 10.75 2.25 10.4142 2.25 10ZM2.25 14C2.25 13.5858 2.58579 13.25 3 13.25H11C11.4142 13.25 11.75 13.5858 11.75 14C11.75 14.4142 11.4142 14.75 11 14.75H3C2.58579 14.75 2.25 14.4142 2.25 14ZM2.25 18C2.25 17.5858 2.58579 17.25 3 17.25H11C11.4142 17.25 11.75 17.5858 11.75 18C11.75 18.4142 11.4142 18.75 11 18.75H3C2.58579 18.75 2.25 18.4142 2.25 18Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'list-cross',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M15 18.5L20 13.5M20 18.5L15 13.5" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M11 14L3 14" stroke="currentColor" stroke-linecap="round"/>
<path d="M11 18H3" stroke="currentColor" stroke-linecap="round"/>
<path d="M3 6L13.5 6M20 6L17.75 6" stroke="currentColor" stroke-linecap="round"/>
<path d="M20 10L9.5 10M3 10H5.25" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'list-cross',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M15 18.5L20 13.5M20 18.5L15 13.5" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M21 6L3 6" stroke="currentColor" stroke-linecap="round"/>
<path d="M21 10L3 10" stroke="currentColor" stroke-linecap="round"/>
<path d="M11 14L3 14" stroke="currentColor" stroke-linecap="round"/>
<path d="M11 18H3" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'list-cross',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M15 18.5L20 13.5M20 18.5L15 13.5" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M21 6L3 6" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M21 10L3 10" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M11 14L3 14" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M11 18H3" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'list-cross',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M2.25 6C2.25 5.58579 2.58579 5.25 3 5.25H21C21.4142 5.25 21.75 5.58579 21.75 6C21.75 6.41421 21.4142 6.75 21 6.75H3C2.58579 6.75 2.25 6.41421 2.25 6ZM2.25 10C2.25 9.58579 2.58579 9.25 3 9.25H21C21.4142 9.25 21.75 9.58579 21.75 10C21.75 10.4142 21.4142 10.75 21 10.75H3C2.58579 10.75 2.25 10.4142 2.25 10ZM14.4697 12.9697C14.7626 12.6768 15.2374 12.6768 15.5303 12.9697L17.5 14.9393L19.4697 12.9697C19.7626 12.6768 20.2374 12.6768 20.5303 12.9697C20.8232 13.2626 20.8232 13.7374 20.5303 14.0303L18.5607 16L20.5303 17.9697C20.8232 18.2626 20.8232 18.7374 20.5303 19.0303C20.2374 19.3232 19.7626 19.3232 19.4697 19.0303L17.5 17.0607L15.5303 19.0303C15.2374 19.3232 14.7626 19.3232 14.4697 19.0303C14.1768 18.7374 14.1768 18.2626 14.4697 17.9697L16.4393 16L14.4697 14.0303C14.1768 13.7374 14.1768 13.2626 14.4697 12.9697ZM2.25 14C2.25 13.5858 2.58579 13.25 3 13.25H11C11.4142 13.25 11.75 13.5858 11.75 14C11.75 14.4142 11.4142 14.75 11 14.75H3C2.58579 14.75 2.25 14.4142 2.25 14ZM2.25 18C2.25 17.5858 2.58579 17.25 3 17.25H11C11.4142 17.25 11.75 17.5858 11.75 18C11.75 18.4142 11.4142 18.75 11 18.75H3C2.58579 18.75 2.25 18.4142 2.25 18Z" fill="currentColor"/>''',
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
