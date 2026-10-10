// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `list-collapse` icon in the broken style.
class ListCollapseBrokenIcon extends StatelessWidget {
  /// Creates the `list-collapse` icon in the broken style.
  const ListCollapseBrokenIcon({
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
    name: 'list-collapse',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M21 6L13 6" stroke="currentColor" stroke-linecap="round"/>
<path d="M21 10L13 10" stroke="currentColor" stroke-linecap="round"/>
<path d="M21 14L13 14" stroke="currentColor" stroke-linecap="round"/>
<path d="M21 18H13" stroke="currentColor" stroke-linecap="round"/>
<path d="M5.28571 18L7 16L5.28571 14" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M5.28571 10L7 8L5.28571 6" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
