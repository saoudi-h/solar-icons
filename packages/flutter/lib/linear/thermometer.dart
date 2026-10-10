// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `thermometer` icon in the linear style.
class ThermometerLinearIcon extends StatelessWidget {
  /// Creates the `thermometer` icon in the linear style.
  const ThermometerLinearIcon({
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
    name: 'thermometer',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M17.0955 10L18.396 11.3006M13.896 13.1994L15.1966 14.5M10.6868 16.4087L11.9873 17.7093M5.57866 20.5576L5.96229 20.1739C6.39492 19.7413 7.00076 19.5288 7.60886 19.5964L8.40799 19.6851C9.32013 19.7865 10.2289 19.4677 10.8778 18.8188L19.8202 9.87642C21.3933 8.30334 21.3933 5.75288 19.8202 4.17981C18.2471 2.60673 15.6967 2.60673 14.1236 4.17981L5.18123 13.1222C4.53228 13.7711 4.2135 14.6799 4.31485 15.592L4.40364 16.3911C4.47121 16.9992 4.25869 17.6051 3.82606 18.0377L3.44243 18.4213C2.85252 19.0112 2.85252 19.9677 3.44243 20.5576C4.03233 21.1475 4.98875 21.1475 5.57866 20.5576Z" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M9 15L15.5 8.5" stroke="currentColor" stroke-linecap="round"/>''',
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
