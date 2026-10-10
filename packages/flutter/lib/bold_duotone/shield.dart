// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `shield` icon in the boldDuotone style.
class ShieldBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `shield` icon in the boldDuotone style.
  const ShieldBoldDuotoneIcon({
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
    name: 'shield',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path d="M12 22C10.9807 22 10.6199 21.8425 9.89844 21.5273C7.23883 20.3655 3 17.6292 3 11.9912V11L12 8V22Z" fill="currentColor"/>
<path d="M12 2C12.8114 2 13.595 2.26825 15.1621 2.80469L15.7354 3.00098C18.7409 4.02979 20.244 4.54434 20.6221 5.08203C20.9996 5.6199 21 7.21941 21 10.417V11L12 8V2Z" fill="currentColor"/>''',
    accent: r'''<g opacity="0.5">
<path d="M21 11V11.9912C21 17.6292 16.7612 20.3655 14.1016 21.5273C13.3801 21.8425 13.0193 22 12 22V8L21 11Z" fill="currentColor"/>
<path d="M12 8L3 11V10.417C3 7.21941 3.00041 5.6199 3.37793 5.08203C3.75595 4.54434 5.25909 4.02979 8.26465 3.00098L8.83789 2.80469C10.405 2.26825 11.1886 2 12 2V8Z" fill="currentColor"/>
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
