// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `bluetooth-square` icon in the lineDuotone style.
class BluetoothSquareLineDuotoneIcon extends StatelessWidget {
  /// Creates the `bluetooth-square` icon in the lineDuotone style.
  const BluetoothSquareLineDuotoneIcon({
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
    name: 'bluetooth-square',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M2 12C2 7.28595 2 4.92893 3.46447 3.46447C4.92893 2 7.28595 2 12 2C16.714 2 19.0711 2 20.5355 3.46447C22 4.92893 22 7.28595 22 12C22 16.714 22 19.0711 20.5355 20.5355C19.0711 22 16.714 22 12 22C7.28595 22 4.92893 22 3.46447 20.5355C2 19.0711 2 16.714 2 12Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M11 12.0004L13.9333 9.80037C14.4222 9.4337 14.6667 9.25037 14.6667 9.00037C14.6667 8.75037 14.4222 8.56704 13.9333 8.20037L12.6 7.20037C11.9019 6.67676 11.5528 6.41496 11.2764 6.55316C11 6.69135 11 7.12769 11 8.00037V12.0004ZM11 12.0004V16.0004C11 16.873 11 17.3094 11.2764 17.4476C11.5528 17.5858 11.9019 17.324 12.6 16.8004L13.9333 15.8004C14.4222 15.4337 14.6667 15.2504 14.6667 15.0004C14.6667 14.7504 14.4222 14.567 13.9333 14.2004L11 12.0004ZM11 12.0004L8 9.50037M11 12.0004L8 14.5004" stroke="currentColor" stroke-linecap="round"/>''',
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
