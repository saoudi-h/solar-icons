// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `walking-round` icon in the broken style.
class WalkingRoundBrokenIcon extends StatelessWidget {
  /// Creates the `walking-round` icon in the broken style.
  const WalkingRoundBrokenIcon({
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
    name: 'walking-round',
    style: SolarIconStyle.broken,
    body:
        r'''<circle cx="12.5" cy="4.5" r="2.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M7 22L7.50917 21.5927C8.79506 20.564 9.67705 19.1148 10 17.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M11.5 10L11.1582 13.4177C11.0801 14.1992 11.041 14.5899 11.1464 14.9581C11.2517 15.3263 11.4916 15.6372 11.9713 16.259L13.0786 17.6943M11.5 10C11.3387 10 11.1601 10.0058 10.9698 10.0161C8.66494 10.141 7 12.1918 7 14.5M11.5 10C12.0042 10 12.5649 10.0565 13.0872 10.1315C14.2886 10.3041 15.2324 11.1973 15.6163 12.3488C15.8373 13.0118 16.5077 13.4154 17.1969 13.3005L19 13M16.4004 22L15.2931 20.5648" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
