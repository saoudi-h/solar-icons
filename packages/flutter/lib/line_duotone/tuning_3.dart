// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `tuning-3` icon in the lineDuotone style.
class Tuning3LineDuotoneIcon extends StatelessWidget {
  /// Creates the `tuning-3` icon in the lineDuotone style.
  const Tuning3LineDuotoneIcon({
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
    name: 'tuning-3',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<circle cx="12" cy="12" r="2" transform="rotate(180 12 12)" stroke="currentColor" stroke-linecap="round"/>
<circle cx="20" cy="14" r="2" transform="rotate(180 20 14)" stroke="currentColor" stroke-linecap="round"/>
<circle cx="2" cy="2" r="2" transform="matrix(-1 8.74228e-08 8.74228e-08 1 6 8)" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M20 12L20 5" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M4 12L4 19" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M12 19L12 14" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M20 19L20 16" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M12 10V5M4 5L4 7.66667" stroke="currentColor" stroke-linecap="round"/>''',
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
