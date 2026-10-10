// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `smart-home` icon in the lineDuotone style.
class SmartHomeLineDuotoneIcon extends StatelessWidget {
  /// Creates the `smart-home` icon in the lineDuotone style.
  const SmartHomeLineDuotoneIcon({
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
    name: 'smart-home',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M11 22C11 17.0294 6.97056 13 2 13" stroke="currentColor" stroke-linecap="round"/>
<path d="M8 22C8 18.6863 5.31371 16 2 16" stroke="currentColor" stroke-linecap="round"/>
<path d="M5 22C5 20.3431 3.65685 19 2 19" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M14.0001 22C17.7713 22 19.657 22 20.8285 20.7881C22.0001 19.5763 22.0001 17.6258 22.0001 13.725V12.2039C22.0001 9.91549 22.0001 8.77128 21.4809 7.82274C20.9617 6.87421 20.0132 6.28551 18.1161 5.10812L16.1161 3.86687C14.1107 2.62229 13.108 2 12.0001 2C10.8922 2 9.8895 2.62229 7.88414 3.86687L5.88415 5.10813C3.98706 6.28551 3.03851 6.87421 2.51931 7.82274C2.20174 8.40293 2.07841 9.05632 2.03052 10" stroke="currentColor" stroke-linecap="round"/>''',
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
