// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `grip-vertical` icon in the broken style.
class GripVerticalBrokenIcon extends StatelessWidget {
  /// Creates the `grip-vertical` icon in the broken style.
  const GripVerticalBrokenIcon({
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
    name: 'grip-vertical',
    style: SolarIconStyle.broken,
    body:
        r'''<circle cx="8.48828" cy="5" r="0.75" transform="rotate(-90 8.48828 5)" stroke="currentColor" stroke-linecap="round"/>
<circle cx="8.48828" cy="12" r="0.75" transform="rotate(-90 8.48828 12)" stroke="currentColor" stroke-linecap="round"/>
<circle cx="8.50391" cy="19" r="0.75" transform="rotate(-90 8.50391 19)" stroke="currentColor" stroke-linecap="round"/>
<circle cx="15.4961" cy="5" r="0.75" transform="rotate(-90 15.4961 5)" stroke="currentColor" stroke-linecap="round"/>
<circle cx="15.4961" cy="12" r="0.75" transform="rotate(-90 15.4961 12)" stroke="currentColor" stroke-linecap="round"/>
<circle cx="15.5117" cy="19" r="0.75" transform="rotate(-90 15.5117 19)" stroke="currentColor" stroke-linecap="round"/>''',
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
