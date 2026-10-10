// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `wheel-angle` icon in the boldDuotone style.
class WheelAngleBoldDuotoneIcon extends StatelessWidget {
  /// Creates the `wheel-angle` icon in the boldDuotone style.
  const WheelAngleBoldDuotoneIcon({
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
    name: 'wheel-angle',
    style: SolarIconStyle.boldDuotone,
    body:
        r'''<path fill-rule="evenodd" clip-rule="evenodd" d="M4.43323 4.77275C3.5567 6.59529 3 9.15004 3 12C3 14.85 3.5567 17.4047 4.43323 19.2272C5.33351 21.0992 6.46125 22 7.5 22C8.53875 22 9.66648 21.0992 10.5668 19.2272C11.4433 17.4047 12 14.85 12 12C12 9.15004 11.4433 6.59529 10.5668 4.77275C9.66648 2.90081 8.53875 2 7.5 2C6.46125 2 5.33351 2.90081 4.43323 4.77275ZM5.8125 12C5.8125 15.4881 6.56802 18.3158 7.5 18.3158C8.36054 18.3158 9.07064 15.905 9.17444 12.7895H8.0625C7.59651 12.7895 7.21875 12.436 7.21875 12C7.21875 11.564 7.59651 11.2105 8.0625 11.2105H9.17444C9.07064 8.09502 8.36054 5.68421 7.5 5.68421C6.56802 5.68421 5.8125 8.51189 5.8125 12Z" fill="currentColor"/>''',
    accent:
        r'''<path opacity="0.5" d="M10.5668 19.2272C9.66649 21.0992 8.53875 22 7.5 22H16.3715C18.9278 22 21.0001 17.5228 21.0001 12C21.0001 6.47715 18.9278 2 16.3715 2H7.5C8.53875 2 9.66649 2.90081 10.5668 4.77275C11.4433 6.59529 12 9.15004 12 12C12 14.85 11.4433 17.4047 10.5668 19.2272Z" fill="currentColor"/>''',
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
