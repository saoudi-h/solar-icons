// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `volume-knob` icon in the broken style.
class VolumeKnobBrokenIcon extends StatelessWidget {
  /// Creates the `volume-knob` icon in the broken style.
  const VolumeKnobBrokenIcon({
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
    name: 'volume-knob',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M17 12C17 9.23858 14.7614 7 12 7C9.23858 7 7 9.23858 7 12C7 14.7614 9.23858 17 12 17" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 7V11" stroke="currentColor" stroke-linecap="round"/>
<path d="M6 6H6.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M6 18H6.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M3.5 12H3.5001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M20.5 12H20.5001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M18 18H18.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M18 6H18.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M12 3.5H12.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
