// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `bluetooth-circle` icon in the linear style.
class BluetoothCircleLinearIcon extends StatelessWidget {
  /// Creates the `bluetooth-circle` icon in the linear style.
  const BluetoothCircleLinearIcon({
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
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M14.2 9.5929L11 12V7.62345C11 6.66862 11 6.1912 11.3015 6.04C11.603 5.88879 11.9838 6.17524 12.7455 6.74814L14.2 7.84228C14.7333 8.24346 15 8.44405 15 8.71759C15 8.99112 14.7333 9.19171 14.2 9.5929Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M14.2 16.1577L12.7455 17.2519C11.9838 17.8248 11.603 18.1112 11.3015 17.96C11 17.8088 11 17.3314 11 16.3766V12L14.2 14.4071C14.7333 14.8083 15 15.0089 15 15.2824C15 15.5559 14.7333 15.7565 14.2 16.1577Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M11 12L8 9.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M11 12L8 14.5" stroke="currentColor" stroke-linecap="round"/>
<circle cx="12" cy="12" r="10" stroke="currentColor" stroke-linecap="round"/>''',
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
