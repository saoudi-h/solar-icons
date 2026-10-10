// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `running-2` icon in the linear style.
class Running2LinearIcon extends StatelessWidget {
  /// Creates the `running-2` icon in the linear style.
  const Running2LinearIcon({
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
    style: SolarIconStyle.linear,
    body:
        r'''<circle cx="18.5" cy="4.5" r="2.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M9 17L7.99923 18.2009C7.262 19.0856 6.89338 19.5279 6.38945 19.764C5.88552 20 5.30973 20 4.15813 20H3" stroke="currentColor" stroke-linecap="round"/>
<path d="M14.3998 21.9999V19.9389C14.3998 19.1453 14.3998 18.7485 14.3057 18.3817C14.2009 17.9732 14.0111 17.5913 13.7488 17.261C13.5132 16.9646 13.1969 16.7249 12.5644 16.2457C11.6088 15.5218 11.131 15.1599 10.9215 14.72C10.6891 14.2322 10.664 13.6711 10.8518 13.1644C11.0212 12.7077 12.1125 11.8064 12.9995 11" stroke="currentColor" stroke-linecap="round"/>
<path d="M4 9.63591L5.43568 8.82018C7.87566 7.43383 9.09566 6.74065 10.4467 6.64241C11.4679 6.56815 12.0528 6.79942 13.4066 7.3567C14.4288 7.77747 15.2738 8.54703 15.7681 9.53574C16.5231 11.0457 18.0664 11.9995 19.7546 11.9995H21" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
