// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `list-minus` icon in the broken style.
class ListMinusBrokenIcon extends StatelessWidget {
  /// Creates the `list-minus` icon in the broken style.
  const ListMinusBrokenIcon({
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
    name: 'list-minus',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M11 14L3 14" stroke="currentColor" stroke-linecap="round"/>
<path d="M11 18H3" stroke="currentColor" stroke-linecap="round"/>
<path d="M14 16.5H21" stroke="currentColor" stroke-linecap="round"/>
<path d="M3 6L14.1176 6M21 6L18.6176 6" stroke="currentColor" stroke-linecap="round"/>
<path d="M21 10L9.88235 10M3 10H5.38235" stroke="currentColor" stroke-linecap="round"/>''',
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
