// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `conditioner-2` icon in the linear style.
class Conditioner2LinearIcon extends StatelessWidget {
  /// Creates the `conditioner-2` icon in the linear style.
  const Conditioner2LinearIcon({
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
    name: 'conditioner-2',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M2 11C2 8.17157 2 6.75736 2.87868 5.87868C3.75736 5 5.17157 5 8 5H16C18.8284 5 20.2426 5 21.1213 5.87868C22 6.75736 22 8.17157 22 11C22 14.7712 22 16.6569 20.8284 17.8284C19.6569 19 17.7712 19 14 19H10C6.22876 19 4.34315 19 3.17157 17.8284C2 16.6569 2 14.7712 2 11Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M18 18.5C18 17.0955 18 16.3933 17.6629 15.8889C17.517 15.6705 17.3295 15.483 17.1111 15.3371C16.6067 15 15.9045 15 14.5 15H9.5C8.09554 15 7.39331 15 6.88886 15.3371C6.67048 15.483 6.48298 15.6705 6.33706 15.8889C6 16.3933 6 17.0955 6 18.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M6 11.5H18" stroke="currentColor" stroke-linecap="round"/>
<path d="M6 9H18" stroke="currentColor" stroke-linecap="round"/>''',
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
