// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `sort-from-top-to-bottom` icon in every style.
///
/// Prefer the static widgets (e.g. `SortFromTopToBottomLinearIcon`) when the
/// style is known upfront: they embed a single SVG. Use this widget when the
/// style is only known at runtime.
class SortFromTopToBottomIcon extends StatelessWidget {
  /// Creates the `sort-from-top-to-bottom` icon.
  ///
  /// [style] defaults to [SolarIconStyle.linear].
  const SortFromTopToBottomIcon({
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
    name: 'sort-from-top-to-bottom',
    style: SolarIconStyle.bold,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M17 3.25C17.4142 3.25 17.75 3.58579 17.75 4V17.75L19.4 15.55C19.6485 15.2186 20.1186 15.1515 20.45 15.4C20.7814 15.6485 20.8485 16.1186 20.6 16.45L17.6 20.45C17.4063 20.7083 17.0691 20.8136 16.7628 20.7115C16.4566 20.6094 16.25 20.3228 16.25 20V4C16.25 3.58579 16.5858 3.25 17 3.25ZM7.25 6C7.25 5.58579 7.58579 5.25 8 5.25H13C13.4142 5.25 13.75 5.58579 13.75 6C13.75 6.41421 13.4142 6.75 13 6.75H8C7.58579 6.75 7.25 6.41421 7.25 6ZM5.25 11C5.25 10.5858 5.58579 10.25 6 10.25H13C13.4142 10.25 13.75 10.5858 13.75 11C13.75 11.4142 13.4142 11.75 13 11.75H6C5.58579 11.75 5.25 11.4142 5.25 11ZM3.25 16C3.25 15.5858 3.58579 15.25 4 15.25H13C13.4142 15.25 13.75 15.5858 13.75 16C13.75 16.4142 13.4142 16.75 13 16.75H4C3.58579 16.75 3.25 16.4142 3.25 16Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'sort-from-top-to-bottom',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M17 3.25C17.4142 3.25 17.75 3.58579 17.75 4V17.75L19.4004 15.5498C19.649 15.2187 20.1189 15.1519 20.4502 15.4004C20.7813 15.649 20.8481 16.1189 20.5996 16.4502L17.5996 20.4502C17.4059 20.7082 17.0688 20.814 16.7627 20.7119C16.4564 20.6098 16.25 20.3228 16.25 20V4C16.25 3.58579 16.5858 3.25 17 3.25Z" fill="currentColor"/>
<path d="M13 15.25C13.4142 15.25 13.75 15.5858 13.75 16C13.75 16.4142 13.4142 16.75 13 16.75H4C3.58579 16.75 3.25 16.4142 3.25 16C3.25 15.5858 3.58579 15.25 4 15.25H13Z" fill="currentColor"/>''',
    accent: r'''<g opacity="0.5">
<path d="M13 10.25C13.4142 10.25 13.75 10.5858 13.75 11C13.75 11.4142 13.4142 11.75 13 11.75H6C5.58579 11.75 5.25 11.4142 5.25 11C5.25 10.5858 5.58579 10.25 6 10.25H13Z" fill="currentColor"/>
<path d="M13 5.25C13.4142 5.25 13.75 5.58579 13.75 6C13.75 6.41421 13.4142 6.75 13 6.75H8C7.58579 6.75 7.25 6.41421 7.25 6C7.25 5.58579 7.58579 5.25 8 5.25H13Z" fill="currentColor"/>
</g>''',
  );

  static const broken = SolarIconData(
    name: 'sort-from-top-to-bottom',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M4 16L13 16" stroke="currentColor" stroke-linecap="round"/>
<path d="M6 11H13" stroke="currentColor" stroke-linecap="round"/>
<path d="M8 6L13 6" stroke="currentColor" stroke-linecap="round"/>
<path d="M17 4L17 20L20 16" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'sort-from-top-to-bottom',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M4 16L13 16" stroke="currentColor" stroke-linecap="round"/>
<path d="M6 11H13" stroke="currentColor" stroke-linecap="round"/>
<path d="M8 6L13 6" stroke="currentColor" stroke-linecap="round"/>
<path d="M17 4L17 20L20 16" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'sort-from-top-to-bottom',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M4 16L13 16" stroke="currentColor" stroke-linecap="round"/>
<path d="M17 4L17 20L20 16" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M6 11H13" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M8 6L13 6" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'sort-from-top-to-bottom',
    style: SolarIconStyle.outline,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M17 3.25C17.4142 3.25 17.75 3.58579 17.75 4V17.75L19.4 15.55C19.6485 15.2186 20.1186 15.1515 20.45 15.4C20.7814 15.6485 20.8485 16.1186 20.6 16.45L17.6 20.45C17.4063 20.7083 17.0691 20.8136 16.7628 20.7115C16.4566 20.6094 16.25 20.3228 16.25 20V4C16.25 3.58579 16.5858 3.25 17 3.25ZM7.25 6C7.25 5.58579 7.58579 5.25 8 5.25H13C13.4142 5.25 13.75 5.58579 13.75 6C13.75 6.41421 13.4142 6.75 13 6.75H8C7.58579 6.75 7.25 6.41421 7.25 6ZM5.25 11C5.25 10.5858 5.58579 10.25 6 10.25H13C13.4142 10.25 13.75 10.5858 13.75 11C13.75 11.4142 13.4142 11.75 13 11.75H6C5.58579 11.75 5.25 11.4142 5.25 11ZM3.25 16C3.25 15.5858 3.58579 15.25 4 15.25H13C13.4142 15.25 13.75 15.5858 13.75 16C13.75 16.4142 13.4142 16.75 13 16.75H4C3.58579 16.75 3.25 16.4142 3.25 16Z" fill="currentColor"/>''',
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
