// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_theme.dart';

/// The `loader` icon.
class LoaderIcon extends StatelessWidget {
  /// Creates the `loader` icon.
  ///
  /// [style] defaults to [SolarIconStyle.linear].
  const LoaderIcon({
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

  /// When true, ignores [SolarTheme] and [IconTheme].
  final bool isolated;

  static const bold = SolarIconData(
    name: 'loader',
    style: SolarIconStyle.bold,
    body: r'''<path d="M1.25 12C1.25 6.06294 6.06294 1.25 12 1.25C12.7364 1.25 13.4563 1.32433 14.1523 1.46582C14.558 1.54836 14.8205 1.94391 14.7383 2.34961C14.6558 2.75549 14.2594 3.01801 13.8535 2.93555C13.2553 2.81394 12.6355 2.75 12 2.75C6.89137 2.75 2.75 6.89137 2.75 12C2.75 17.1086 6.89137 21.25 12 21.25C17.1086 21.25 21.25 17.1086 21.25 12C21.25 11.3688 21.1864 10.7527 21.0664 10.1582C20.9847 9.75246 21.2476 9.35749 21.6533 9.27539C22.0592 9.19344 22.455 9.45554 22.5371 9.86133C22.6768 10.553 22.75 11.2685 22.75 12C22.75 17.9371 17.9371 22.75 12 22.75C6.06294 22.75 1.25 17.9371 1.25 12Z" fill="currentColor"/>''',
  );

  static const boldDuotone = SolarIconData(
    name: 'loader',
    style: SolarIconStyle.boldDuotone,
    body: r'''<path d="M21.6533 9.27498C22.0593 9.19301 22.4551 9.45589 22.5371 9.8619C22.6767 10.5535 22.75 11.2691 22.75 12.0006C22.7497 17.9374 17.9369 22.7506 12 22.7506C11.5859 22.7506 11.2503 22.4146 11.25 22.0006C11.25 21.5864 11.5858 21.2506 12 21.2506C17.1085 21.2506 21.2497 17.109 21.25 12.0006C21.25 11.3694 21.1864 10.7532 21.0664 10.1588C20.9845 9.75286 21.2475 9.35706 21.6533 9.27498Z" fill="currentColor"/>''',
    accent: r'''<path opacity="0.5" d="M12 1.25C12.7364 1.25 13.4563 1.32433 14.1523 1.46582C14.558 1.54836 14.8205 1.94391 14.7383 2.34961C14.6558 2.75549 14.2594 3.01801 13.8535 2.93555C13.2553 2.81394 12.6355 2.75 12 2.75C6.89137 2.75 2.75 6.89137 2.75 12C2.75 17.1086 6.89137 21.25 12 21.25C17.1086 21.25 21.25 17.1086 21.25 12C21.25 11.3688 21.1864 10.7527 21.0664 10.1582C20.9847 9.75246 21.2476 9.35749 21.6533 9.27539C22.0592 9.19344 22.455 9.45554 22.5371 9.86133C22.6768 10.553 22.75 11.2685 22.75 12C22.75 17.9371 17.9371 22.75 12 22.75C6.06294 22.75 1.25 17.9371 1.25 12C1.25 6.06294 6.06294 1.25 12 1.25Z" fill="currentColor"/>

<path opacity="0.5" d="M21.6533 9.27498C22.0593 9.19301 22.4551 9.45589 22.5371 9.8619C22.6767 10.5535 22.75 11.2691 22.75 12.0006C22.7497 17.9374 17.9369 22.7506 12 22.7506C6.0631 22.7506 1.25026 17.9374 1.25 12.0006C1.25 11.5864 1.58579 11.2506 2 11.2506C2.41421 11.2506 2.75 11.5864 2.75 12.0006C2.75026 17.109 6.89153 21.2506 12 21.2506C17.1085 21.2506 21.2497 17.109 21.25 12.0006C21.25 11.3694 21.1864 10.7532 21.0664 10.1588C20.9845 9.75286 21.2475 9.35706 21.6533 9.27498Z" fill="currentColor"/>''',
  );

  static const broken = SolarIconData(
    name: 'loader',
    style: SolarIconStyle.broken,
    body: r'''<path d="M2 12.0001C2 17.5229 6.47715 22.0001 12 22.0001C17.5228 22.0001 22 17.5229 22 12.0001C22 11.3187 21.9319 10.6533 21.802 10.0103" stroke="currentColor" stroke-linecap="round"/>
<path d="M2.81787 8.03255C4.35351 4.48336 7.88671 2 11.9999 2C12.6859 2 13.3557 2.06906 14.0028 2.20061" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const linear = SolarIconData(
    name: 'loader',
    style: SolarIconStyle.linear,
    body: r'''<path d="M14.0028 2.20061C13.3557 2.06906 12.6859 2 12 2C6.47715 2 2 6.47715 2 12C2 17.5228 6.47715 22 12 22C17.5228 22 22 17.5228 22 12C22 11.3187 21.9319 10.6532 21.802 10.0102" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const lineDuotone = SolarIconData(
    name: 'loader',
    style: SolarIconStyle.lineDuotone,
    body: r'''<path d="M21.802 10.0103C21.9319 10.6533 22 11.3187 22 12.0001C22 17.5229 17.5228 22.0001 12 22.0001" stroke="currentColor" stroke-linecap="round"/>''',
    accent: r'''<path opacity="0.5" d="M14.0028 2.20061C13.3557 2.06906 12.6859 2 12 2C6.47715 2 2 6.47715 2 12C2 17.5228 6.47715 22 12 22C17.5228 22 22 17.5228 22 12C22 11.3187 21.9319 10.6532 21.802 10.0102" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M2 12.0001C2 17.5229 6.47715 22.0001 12 22.0001C17.5228 22.0001 22 17.5229 22 12.0001C22 11.3187 21.9319 10.6533 21.802 10.0103" stroke="currentColor" stroke-linecap="round"/>''',
  );

  static const outline = SolarIconData(
    name: 'loader',
    style: SolarIconStyle.outline,
    body: r'''<path d="M1.25 12C1.25 6.06294 6.06294 1.25 12 1.25C12.7364 1.25 13.4563 1.32433 14.1523 1.46582C14.558 1.54836 14.8205 1.94391 14.7383 2.34961C14.6558 2.75549 14.2594 3.01801 13.8535 2.93555C13.2553 2.81394 12.6355 2.75 12 2.75C6.89137 2.75 2.75 6.89137 2.75 12C2.75 17.1086 6.89137 21.25 12 21.25C17.1086 21.25 21.25 17.1086 21.25 12C21.25 11.3688 21.1864 10.7527 21.0664 10.1582C20.9847 9.75246 21.2476 9.35749 21.6533 9.27539C22.0592 9.19344 22.455 9.45554 22.5371 9.86133C22.6768 10.553 22.75 11.2685 22.75 12C22.75 17.9371 17.9371 22.75 12 22.75C6.06294 22.75 1.25 17.9371 1.25 12Z" fill="currentColor"/>''',
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
