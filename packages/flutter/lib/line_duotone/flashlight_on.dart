// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `flashlight-on` icon in the lineDuotone style.
class FlashlightOnLineDuotoneIcon extends StatelessWidget {
  /// Creates the `flashlight-on` icon in the lineDuotone style.
  const FlashlightOnLineDuotoneIcon({
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
    name: 'flashlight-on',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M9 22V17.6569C9 16.8394 9 16.4306 8.84776 16.0631C8.69552 15.6955 8.40649 15.4065 7.82843 14.8284L4.58579 11.5858C4.29676 11.2968 4.15224 11.1522 4.07612 10.9685C4 10.7847 4 10.5803 4 10.1716V10C4 9.05719 4 8.58579 4.29289 8.29289C4.58579 8 5.05719 8 6 8H18C18.9428 8 19.4142 8 19.7071 8.29289C20 8.58579 20 9.05719 20 10V10.1716C20 10.5803 20 10.7847 19.9239 10.9685C19.8478 11.1522 19.7032 11.2968 19.4142 11.5858L16.1716 14.8284C15.5935 15.4065 15.3045 15.6955 15.1522 16.0631C15 16.4306 15 16.8394 15 17.6569V22" stroke="currentColor" stroke-linecap="round"/>
<path d="M15 16H9" stroke="currentColor" stroke-linecap="round"/>
<path d="M8 5L6 3" stroke="currentColor" stroke-linecap="round"/>
<path d="M16 5L18 3" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M4.5 11H19.5" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M12 5V2" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M12 19V21" stroke="currentColor" stroke-linecap="round"/>''',
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
