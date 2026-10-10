// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `skateboarding` icon in the broken style.
class SkateboardingBrokenIcon extends StatelessWidget {
  /// Creates the `skateboarding` icon in the broken style.
  const SkateboardingBrokenIcon({
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
    name: 'skateboarding',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M3 17L4.20414 18.3379C4.58342 18.7594 5.12375 19 5.69073 19H10M21 17L19.7959 18.3379C19.4166 18.7594 18.8762 19 18.3093 19H14" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<circle cx="19" cy="4" r="2" stroke="currentColor" stroke-linecap="round"/>
<path d="M15 16.5004V15.2496C15 15.1657 15 15.1237 14.999 15.0843C14.9732 14.1062 14.4721 13.2021 13.6563 12.6619C13.6234 12.6401 13.5842 12.6155 13.5057 12.5665C13.4089 12.506 13.3604 12.4757 13.3291 12.4545C12.241 11.7158 12.1498 10.1461 13.145 9.2863C13.1735 9.2616 13.2125 9.23044 13.2903 9.16819L13.7358 8.81177C14.7607 7.99187 14.5413 6.37526 13.3349 5.85825C12.8119 5.6341 12.2123 5.68028 11.7297 5.98186L8.5 8.00044" stroke="currentColor" stroke-linecap="round"/>
<path d="M7 15.5H7.37868C8.73694 15.5 10.0396 14.9604 11 14" stroke="currentColor" stroke-linecap="round"/>
<path d="M16.5 10C17.8131 10.3283 19.1869 10.3283 20.5 10" stroke="currentColor" stroke-linecap="round"/>
<path d="M7 21H7.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M17 21H17.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
