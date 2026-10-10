// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `bluetooth-circle` icon in the lineDuotone style.
class BluetoothCircleLineDuotoneIcon extends StatelessWidget {
  /// Creates the `bluetooth-circle` icon in the lineDuotone style.
  const BluetoothCircleLineDuotoneIcon({
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
    name: 'bluetooth-circle',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<circle cx="12" cy="12" r="10" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M11 12L14.2 9.5929C14.7333 9.19171 15 8.99112 15 8.71759C15 8.44405 14.7333 8.24346 14.2 7.84228L12.7455 6.74814C11.9838 6.17524 11.603 5.88879 11.3015 6.04C11 6.1912 11 6.66862 11 7.62345V12ZM11 12V16.3766C11 17.3314 11 17.8088 11.3015 17.96C11.603 18.1112 11.9838 17.8248 12.7455 17.2519L14.2 16.1577C14.7333 15.7565 15 15.5559 15 15.2824C15 15.0089 14.7333 14.8083 14.2 14.4071L11 12ZM11 12L8 9.5M11 12L8 14.5" stroke="currentColor" stroke-linecap="round"/>''',
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
