// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `tram` icon in the broken style.
class TramBrokenIcon extends StatelessWidget {
  /// Creates the `tram` icon in the broken style.
  const TramBrokenIcon({
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
    name: 'tram',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M20 10V12C20 15.7712 20 17.6569 18.8284 18.8284C17.6569 20 15.7712 20 12 20C8.22876 20 6.34315 20 5.17157 18.8284C4 17.6569 4 15.7712 4 12V10C4 6.22876 4 4.34315 5.17157 3.17157C6.34315 2 8.22876 2 12 2C15.7712 2 17.6569 2 18.8284 3.17157C19.4816 3.82475 19.7706 4.69989 19.8985 6" stroke="currentColor" stroke-linecap="round"/>
<path d="M15.5 16H17" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M7 16H8.5" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M7 20L6 22" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M17 20L18 22" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M10 2V2.5C10 3.60457 10.8954 4.5 12 4.5C13.1046 4.5 14 3.60457 14 2.5V2" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M20 13H16M4 13H12" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
