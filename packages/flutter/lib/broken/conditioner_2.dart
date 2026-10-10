// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `conditioner-2` icon in the broken style.
class Conditioner2BrokenIcon extends StatelessWidget {
  /// Creates the `conditioner-2` icon in the broken style.
  const Conditioner2BrokenIcon({
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
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M8 5C5.17157 5 3.75736 5 2.87868 5.87868C2 6.75736 2 8.17157 2 11C2 14.7712 2 16.6569 3.17157 17.8284C4.34315 19 6.22876 19 10 19H14C17.7712 19 19.6569 19 20.8284 17.8284C22 16.6569 22 14.7712 22 11C22 8.17157 22 6.75736 21.1213 5.87868C20.2426 5 18.8284 5 16 5H12" stroke="currentColor" stroke-linecap="round"/>
<path d="M18 18.5C18 17.0955 18 16.3933 17.6629 15.8889C17.517 15.6705 17.3295 15.483 17.1111 15.3371C16.6067 15 15.9045 15 14.5 15H9.5C8.09554 15 7.39331 15 6.88886 15.3371C6.67048 15.483 6.48298 15.6705 6.33706 15.8889C6 16.3933 6 17.0955 6 18.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M6 11.5H8M18 11.5H12" stroke="currentColor" stroke-linecap="round"/>
<path d="M6 9H12M18 9H16" stroke="currentColor" stroke-linecap="round"/>''',
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
