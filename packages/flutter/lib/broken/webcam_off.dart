// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `webcam-off` icon in the broken style.
class WebcamOffBrokenIcon extends StatelessWidget {
  /// Creates the `webcam-off` icon in the broken style.
  const WebcamOffBrokenIcon({
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
    name: 'webcam-off',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M12 4.50098H12.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M16 22H8" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 18.0031V22" stroke="currentColor" stroke-linecap="round"/>
<path d="M14.8715 9.12853C14.4981 7.89669 13.3538 7 12 7C10.3431 7 9 8.34315 9 10C9 11.3538 9.8967 12.4981 11.1285 12.8715" stroke="currentColor" stroke-linecap="round"/>
<path d="M7.43173 16.5683C5.3574 15.1229 4 12.7199 4 10C4 8.9391 4.20651 7.92643 4.58152 7" stroke="currentColor" stroke-linecap="round"/>
<path d="M9.65405 17.6507C10.3959 17.8779 11.1836 18.0002 11.9999 18.0002C16.4182 18.0002 19.9999 14.4184 19.9999 10.0002C19.9999 9.18388 19.8777 8.39616 19.6505 7.6543" stroke="currentColor" stroke-linecap="round"/>
<path d="M9 2.58152C9.92643 2.20651 10.9391 2 12 2C14.7199 2 17.1229 3.3574 18.5683 5.43173" stroke="currentColor" stroke-linecap="round"/>
<path d="M22 2L2 22" stroke="currentColor" stroke-linecap="round"/>''',
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
