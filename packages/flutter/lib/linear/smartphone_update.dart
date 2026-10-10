// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `smartphone-update` icon in the linear style.
class SmartphoneUpdateLinearIcon extends StatelessWidget {
  /// Creates the `smartphone-update` icon in the linear style.
  const SmartphoneUpdateLinearIcon({
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
    name: 'smartphone-update',
    style: SolarIconStyle.linear,
    body: r'''<g clip-path="url(#clip0_1276_5860)">
<path d="M13 2.00098C16.1143 2.01009 17.7653 2.10853 18.8284 3.17162C20 4.34319 20 6.22881 20 10V14C20 17.7713 20 19.6569 18.8284 20.8285C17.6569 22 15.7712 22 12 22C8.22876 22 6.34315 22 5.17157 20.8285C4 19.6569 4 17.7713 4 14V11.001" stroke="currentColor" stroke-linecap="round"/>
<path d="M2.73016 4.8L2.73016 4C2.73016 1.79086 4.36469 0 6.38098 0C7.47451 0 8.45575 0.526765 9.12484 1.36133M2 4L2.73016 4.8L3.46033 4M10.2698 3.2V4C10.2698 6.20914 8.63531 8 6.61902 8C5.60133 8 4.68089 7.54376 4.0188 6.80778M11 4L10.2698 3.2L9.53967 4" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M15 19H9" stroke="currentColor" stroke-linecap="round"/>
</g>
<defs>
<clipPath id="clip0_1276_5860">
<rect width="24" height="24" fill="white"/>
</clipPath>
</defs>''',
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
