// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `wheel` icon in the lineDuotone style.
class WheelLineDuotoneIcon extends StatelessWidget {
  /// Creates the `wheel` icon in the lineDuotone style.
  const WheelLineDuotoneIcon({
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
    name: 'wheel',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<circle cx="12" cy="12" r="10" stroke="currentColor" stroke-linecap="round"/>
<circle cx="12" cy="12" r="6" stroke="currentColor" stroke-linecap="round"/>
<circle cx="12" cy="12" r="2" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M6 12L10 12" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M14 12L18 12" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M9 17.1963L11 13.7322" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M13 10.2686L15 6.80445" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M15 17.1963L13 13.7322" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M11 10.2676L9 6.80348" stroke="currentColor" stroke-linecap="round"/>''',
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
