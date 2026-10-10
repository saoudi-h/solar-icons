// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `heart-pulse-2` icon in the broken style.
class HeartPulse2BrokenIcon extends StatelessWidget {
  /// Creates the `heart-pulse-2` icon in the broken style.
  const HeartPulse2BrokenIcon({
    super.key,
    this.size,
    this.color,
    this.strokeWidth,
    this.secondaryColor,
    this.secondaryOpacity,
    this.semanticLabel,
    this.isolated = false,
  });

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

  /// Static payload for composition with [SolarIcon].
  static const data = SolarIconData(
    name: 'heart-pulse-2',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M21 11.9998H18.6361C17.9781 11.9998 17.6491 11.9998 17.3578 12.1296C17.0665 12.2593 16.8463 12.504 16.4059 12.9932L15.3767 14.1369C15.0154 14.5382 14.8348 14.7389 14.6057 14.734C14.3766 14.7291 14.2049 14.521 13.8616 14.1048L10.3334 9.82819C10.0133 9.44017 9.85321 9.24615 9.63599 9.23311C9.41877 9.22006 9.23663 9.39352 8.87237 9.74044L7.36897 11.1723C6.93986 11.5809 6.7253 11.7853 6.45709 11.8926C6.18887 11.9998 5.89258 11.9998 5.3 11.9998H3" stroke="currentColor" stroke-linecap="round"/>
<path d="M3.29334 13C2.50729 11.7374 2 10.4241 2 9.13707C2 3.08498 7.50016 0.825433 12 5.5006C16.4998 0.825433 22 3.08498 22 9.13703C22 12.7599 17.9806 16.5914 15.0383 18.9109C13.7063 19.9609 13.0403 20.4859 12 20.4859C10.9597 20.4859 10.2937 19.9609 8.96173 18.9108C8.02863 18.1753 6.9872 17.2876 6 16.3028" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
  );

  SolarIconData get _data => data;

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
