// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `list-collapse-minimalistic` icon in the lineDuotone style.
class ListCollapseMinimalisticLineDuotoneIcon extends StatelessWidget {
  /// Creates the `list-collapse-minimalistic` icon in the lineDuotone style.
  const ListCollapseMinimalisticLineDuotoneIcon({
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
    name: 'list-collapse-minimalistic',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M5.28571 16L7 14L5.28571 12" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M5.28571 10L7 8L5.28571 6" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M20 16H12" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M20 11L12 11" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M20 6L12 6" stroke="currentColor" stroke-linecap="round"/>''',
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
