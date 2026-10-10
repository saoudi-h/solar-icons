// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `webcam-off` icon in the lineDuotone style.
class WebcamOffLineDuotoneIcon extends StatelessWidget {
  /// Creates the `webcam-off` icon in the lineDuotone style.
  const WebcamOffLineDuotoneIcon({
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
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M14.8715 9.12853C14.4981 7.89669 13.3538 7 12 7C10.3431 7 9 8.34315 9 10C9 11.3538 9.8967 12.4981 11.1285 12.8715" stroke="currentColor" stroke-linecap="round"/>
<path d="M22 2L2 22" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 4.50098H12.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M22 2C20.8415 3.15848 19.683 4.31695 18.5246 5.47543C14.8415 9.15847 11.1585 12.8415 7.47544 16.5246C5.65029 18.3497 3.82515 20.1749 2 22" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M18.5246 5.47544C17.0618 3.3948 14.6512 2.02218 11.9354 2.00027C7.51731 1.96461 3.96461 5.51731 4.00027 9.93545C4.02218 12.6512 5.3948 15.0618 7.47545 16.5246" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M16 22H8M9.65405 17.6507C10.3959 17.8779 11.1836 18.0002 11.9999 18.0002M11.9999 18.0002C16.4182 18.0002 19.9999 14.4184 19.9999 10.0002C19.9999 9.18388 19.8777 8.39616 19.6505 7.6543M11.9999 18.0002L12 22" stroke="currentColor" stroke-linecap="round"/>''',
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
