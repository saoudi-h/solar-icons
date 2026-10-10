// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `running-2` icon in the broken style.
class Running2BrokenIcon extends StatelessWidget {
  /// Creates the `running-2` icon in the broken style.
  const Running2BrokenIcon({
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
    name: 'running-2',
    style: SolarIconStyle.broken,
    body:
        r'''<circle cx="18.5" cy="4.5" r="2.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M9 17L7.99923 18.2009C7.262 19.0856 6.89338 19.5279 6.38945 19.764C5.88552 20 5.30973 20 4.15813 20H3" stroke="currentColor" stroke-linecap="round"/>
<path d="M14.4001 21.9999V19.9389C14.4001 19.1453 14.4001 18.7485 14.306 18.3817C14.2012 17.9732 14.0114 17.5913 13.749 17.261C13.5135 16.9646 13.1972 16.7249 12.5646 16.2457C11.6091 15.5218 11.1313 15.1599 10.9217 14.72C10.6893 14.2322 10.6642 13.6711 10.8521 13.1644C11.0215 12.7077 12.1127 11.8064 12.9998 11" stroke="currentColor" stroke-linecap="round"/>
<path d="M5.43568 8.82018L4 9.63591M21 11.9995H19.7546C18.0664 11.9995 16.5231 11.0457 15.7681 9.53574C15.2738 8.54703 14.4288 7.77747 13.4066 7.3567C12.0528 6.79942 11.4679 6.56815 10.4467 6.64241C9.96807 6.67721 9.50585 6.7867 9 6.97523" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
