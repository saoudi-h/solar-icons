// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `speedometer-middle` icon in the linear style.
class SpeedometerMiddleLinearIcon extends StatelessWidget {
  /// Creates the `speedometer-middle` icon in the linear style.
  const SpeedometerMiddleLinearIcon({
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
    name: 'speedometer-middle',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M22 12C22 17.5228 17.5228 22 12 22C6.47715 22 2 17.5228 2 12C2 6.47715 6.47715 2 12 2C17.5228 2 22 6.47715 22 12Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M19 19L17.5 17.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M19 5L17.5 6.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M5 19L6.5 17.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M5 5L6.5 6.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M2 12H4" stroke="currentColor" stroke-linecap="round"/>
<path d="M19.9998 12L21.9998 12" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 4.00021L12 2.00021" stroke="currentColor" stroke-linecap="round"/>
<path d="M15 11.9999C15 13.6567 13.6569 14.9999 12 14.9999C10.3431 14.9999 9 13.6567 9 11.9999C9 11.3696 9.43408 10.4954 9.972 9.65399C10.7764 8.39573 11.1786 7.7666 12 7.7666C12.8214 7.7666 13.2236 8.39573 14.028 9.65399C14.5659 10.4954 15 11.3696 15 11.9999Z" stroke="currentColor" stroke-linecap="round"/>''',
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
