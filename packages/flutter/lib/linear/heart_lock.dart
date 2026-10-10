// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `heart-lock` icon in the linear style.
class HeartLockLinearIcon extends StatelessWidget {
  /// Creates the `heart-lock` icon in the linear style.
  const HeartLockLinearIcon({
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
    name: 'heart-lock',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M17 7C17 3.68629 15.0125 2 12 2C8.98754 2 7 3.68629 7 7" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 12V14.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M3 12.0992C3 16.3364 6.61748 18.5943 9.26556 20.6154C10.2 21.3285 11.1 22 12 22C12.9 22 13.8 21.3285 14.7344 20.6154C17.3825 18.5943 21 16.3364 21 12.0992C21 7.86196 16.0499 4.85701 12 8.93062C7.95014 4.85701 3 7.86196 3 12.0992Z" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
