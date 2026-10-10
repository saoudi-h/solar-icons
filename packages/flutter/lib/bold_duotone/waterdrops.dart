// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `waterdrops` icon in the boldDuotone style.
class WaterdropsBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `waterdrops` icon in the boldDuotone style.
  const WaterdropsBoldDuotoneIcon({
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
    name: 'waterdrops',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M10 17.8332C10 20.1344 8.20914 21.9999 6 21.9999C3.79086 21.9999 2 20.1344 2 17.8332C2 16.3934 3.56593 14.4716 4.73823 13.2347C5.43222 12.5025 6.56778 12.5025 7.26177 13.2347C8.43407 14.4716 10 16.3934 10 17.8332Z" fill="currentColor"/>''',
    accent: r'''<g opacity="0.5">
<path d="M16.7383 13.2345C17.4322 12.5026 18.5678 12.5026 19.2617 13.2345C20.434 14.4714 21.9999 16.3934 22 17.8332C22 20.1343 20.2091 22.0001 18 22.0001C15.7909 22.0001 14 20.1343 14 17.8332C14.0001 16.3934 15.566 14.4714 16.7383 13.2345Z" fill="currentColor"/>
<path d="M10.7383 3.23452C11.4322 2.50256 12.5678 2.50256 13.2617 3.23452C14.434 4.47139 15.9999 6.39335 16 7.83315C16 10.1343 14.2091 12.0001 12 12.0001C9.79086 12.0001 8 10.1343 8 7.83315C8.00013 6.39335 9.56603 4.47139 10.7383 3.23452Z" fill="currentColor"/>
</g>''',
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
