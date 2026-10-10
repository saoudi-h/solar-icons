// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `brain` icon in the broken style.
class BrainBrokenIcon extends StatelessWidget {
  /// Creates the `brain` icon in the broken style.
  const BrainBrokenIcon({
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
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M5.25337 3.69468C4.75614 4.30028 4.44803 5.03822 4.46233 5.85821C1.1512 7.4608 1.82374 10.7124 2.5739 12.1378C0.122706 16.1828 3.49813 21.9614 7.99889 21.9998C11.5995 22.0306 11.7509 19.1375 11.7509 18.741V4.60212C11.7509 3.20919 10.1826 1.97257 8.74963 2.00097" stroke="currentColor" stroke-linecap="round"/>
<path d="M18.5728 21.0256C17.6666 21.6275 16.6193 21.9903 15.5028 21.9998C11.9022 22.0306 11.7508 19.1375 11.7508 18.741V4.60212C11.7508 3.20919 13.3191 1.97257 14.7521 2.00097C16.7845 2.04124 19.0778 3.65304 19.0394 5.85821C22.3505 7.4608 21.678 10.7124 20.9278 12.1378C21.9692 13.8564 21.9589 15.8878 21.2574 17.659" stroke="currentColor" stroke-linecap="round"/>
<path d="M9.34674 10.2001C7.98346 10.7056 6.53634 10.0277 6.1145 8.68604M8.45563 17.2587C7.09235 17.7642 5.64523 17.0863 5.22339 15.7446M14.1551 10.2001C15.5183 10.7056 16.9655 10.0277 17.3873 8.68604M15.0462 17.2587C16.4095 17.7642 17.8566 17.0863 18.2784 15.7446" stroke="currentColor" stroke-linecap="round"/>''',
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
