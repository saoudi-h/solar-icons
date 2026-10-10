// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `tuning-4` icon in the linear style.
class Tuning4LinearIcon extends StatelessWidget {
  /// Creates the `tuning-4` icon in the linear style.
  const Tuning4LinearIcon({
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
    name: 'tuning-4',
    style: SolarIconStyle.linear,
    body:
        r'''<circle cx="12" cy="12" r="2" transform="rotate(-90 12 12)" stroke="currentColor" stroke-linecap="round"/>
<circle cx="10" cy="20" r="2" transform="rotate(-90 10 20)" stroke="currentColor" stroke-linecap="round"/>
<circle cx="2" cy="2" r="2" transform="matrix(-4.37114e-08 -1 -1 4.37114e-08 16 6)" stroke="currentColor" stroke-linecap="round"/>
<path d="M16 12L19 12" stroke="currentColor" stroke-linecap="round"/>
<path d="M14 20L19 20" stroke="currentColor" stroke-linecap="round"/>
<path d="M10 4L5 4" stroke="currentColor" stroke-linecap="round"/>
<path d="M5 12L8 12" stroke="currentColor" stroke-linecap="round"/>
<path d="M5 20L6 20" stroke="currentColor" stroke-linecap="round"/>
<path d="M19 4L18 4" stroke="currentColor" stroke-linecap="round"/>''',
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
