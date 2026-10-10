// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `cup-hot` icon in the linear style.
class CupHotLinearIcon extends StatelessWidget {
  /// Creates the `cup-hot` icon in the linear style.
  const CupHotLinearIcon({
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
    name: 'cup-hot',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M3.28441 11.2661C3.15113 9.26687 3.08449 8.26726 3.67729 7.63363C4.27009 7 5.27191 7 7.27555 7H12.7245C14.7281 7 15.7299 7 16.3227 7.63363C16.9155 8.26726 16.8489 9.26687 16.7156 11.2661L16.3734 16.3991C16.1964 19.054 16.1079 20.3815 15.2429 21.1907C14.3779 22 13.0475 22 10.3867 22H9.61333C6.95253 22 5.62212 22 4.75712 21.1907C3.89211 20.3815 3.80361 19.054 3.62662 16.3991L3.28441 11.2661Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M16.2574 18H3.74268" stroke="currentColor" stroke-linecap="round"/>
<path d="M6.05081 5.0614L6.46143 4.48574C6.6882 4.16781 6.61431 3.72623 6.29638 3.49945C5.97845 3.27267 5.90455 2.8311 6.13133 2.51317L6.54195 1.9375M14.0508 5.0614L14.4614 4.48574C14.6882 4.16781 14.6143 3.72623 14.2964 3.49945C13.9784 3.27267 13.9046 2.8311 14.1313 2.51317L14.5419 1.9375M10.0508 5.0614L10.4614 4.48574C10.6882 4.16781 10.6143 3.72623 10.2964 3.49945C9.97845 3.27267 9.90455 2.8311 10.1313 2.51317L10.5419 1.9375" stroke="currentColor" stroke-linecap="round"/>
<path d="M16.3329 17H17.9999C20.2091 17 21.9999 15.2091 21.9999 13C21.9999 10.7909 20.2091 9 17.9999 9H16.7955" stroke="currentColor" stroke-linecap="round"/>''',
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
