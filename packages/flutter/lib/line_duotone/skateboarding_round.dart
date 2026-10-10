// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `skateboarding-round` icon in the lineDuotone style.
class SkateboardingRoundLineDuotoneIcon extends StatelessWidget {
  /// Creates the `skateboarding-round` icon in the lineDuotone style.
  const SkateboardingRoundLineDuotoneIcon({
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
    name: 'skateboarding-round',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M3 17L3.60827 17.6759C4.36684 18.5187 5.4475 19 6.58145 19H17.4186C18.5525 19 19.6332 18.5187 20.3917 17.6759L21 17" stroke="currentColor" stroke-linecap="round"/>
<circle cx="19" cy="4" r="2" stroke="currentColor" stroke-linecap="round"/>
<path d="M15 16.5002V14.3667C15 13.8177 14.7561 13.297 14.3344 12.9455L13.3379 12.1152C12.6195 11.5164 12.5702 10.43 13.2315 9.76871L14.8855 8.11473C15.4193 7.5809 15.2452 6.67671 14.5513 6.37932C13.2663 5.82861 11.793 5.94205 10.6075 6.68301L8.5 8.00021" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M11 14L10.3787 14.6213C9.94513 15.0549 9.72836 15.2716 9.4527 15.3858C9.17705 15.5 8.87049 15.5 8.25736 15.5H7" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M16.5 10H19.5" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M7 21H7.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>

<path opacity="0.5" d="M17 21H17.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
