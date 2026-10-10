// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `brain` icon in the lineDuotone style.
class BrainLineDuotoneIcon extends StatelessWidget {
  /// Creates the `brain` icon in the lineDuotone style.
  const BrainLineDuotoneIcon({
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
    name: 'brain',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M9.34674 10.2001C7.98346 10.7056 6.53634 10.0277 6.1145 8.68604" stroke="currentColor" stroke-linecap="round"/>
<path d="M8.45563 17.2587C7.09235 17.7642 5.64523 17.0863 5.22339 15.7446" stroke="currentColor" stroke-linecap="round"/>
<path d="M15.5028 21.9999C11.9022 22.0307 11.7508 19.1376 11.7508 18.7411V4.60213C11.7508 3.20919 13.3191 1.97257 14.7521 2.00097C16.7845 2.04124 19.0778 3.65305 19.0394 5.85823C22.3505 7.46082 21.678 10.7124 20.9278 12.1379C23.379 16.1829 20.0036 21.9615 15.5028 21.9999Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M7.99889 21.9999C11.5995 22.0307 11.7509 19.1376 11.7509 18.7411V4.60213C11.7509 3.20919 10.1826 1.97257 8.74963 2.00097C6.71718 2.04124 4.42387 3.65305 4.46233 5.85823C1.1512 7.46082 1.82374 10.7124 2.5739 12.1379C0.122706 16.1829 3.49813 21.9615 7.99889 21.9999Z" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M14.155 10.2001C15.5183 10.7056 16.9654 10.0277 17.3873 8.68604" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M15.0461 17.2587C16.4094 17.7642 17.8565 17.0863 18.2784 15.7446" stroke="currentColor" stroke-linecap="round"/>''',
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
