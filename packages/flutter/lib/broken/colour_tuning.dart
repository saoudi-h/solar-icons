// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `colour-tuning` icon in the broken style.
class ColourTuningBrokenIcon extends StatelessWidget {
  /// Creates the `colour-tuning` icon in the broken style.
  const ColourTuningBrokenIcon({
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
    name: 'colour-tuning',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M2 12H9.5M22 12H14.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M20.0002 15.6843C20.0002 19 17.7345 22 16.0002 22C14.7427 22 13.6725 21.0299 12.9682 18.9999M4.14404 8.31567C4.14404 4.99988 6.40978 1.99988 8.14404 1.99988C10.4128 1.99988 12.0723 5.15794 12.0723 12C12.0723 13.0933 12.1146 14.0926 12.1951 14.9999" stroke="currentColor" stroke-linecap="round"/>''',
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
