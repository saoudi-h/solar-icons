// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `webcam-off` icon in the linear style.
class WebcamOffLinearIcon extends StatelessWidget {
  /// Creates the `webcam-off` icon in the linear style.
  const WebcamOffLinearIcon({
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
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M14.8715 9.12853C14.4981 7.89669 13.3538 7 12 7C10.3431 7 9 8.34315 9 10C9 11.3538 9.8967 12.4981 11.1285 12.8715" stroke="currentColor" stroke-linecap="round"/>
<path d="M22 2L2 22" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 4.50098H12.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M18.5246 5.47544C17.0618 3.3948 14.6512 2.02218 11.9354 2.00027C7.51731 1.96461 3.96461 5.51731 4.00027 9.93545C4.02218 12.6512 5.3948 15.0618 7.47545 16.5246" stroke="currentColor" stroke-linecap="round"/>
<path d="M16 22H8" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 18.0031V22" stroke="currentColor" stroke-linecap="round"/>
<path d="M9.6543 17.6507C10.3962 17.8779 11.1839 18.0002 12.0002 18.0002C16.4184 18.0002 20.0002 14.4184 20.0002 10.0002C20.0002 9.18388 19.8779 8.39616 19.6507 7.6543" stroke="currentColor" stroke-linecap="round"/>''',
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
