// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `wi-fi-cross` icon in the linear style.
class WiFiCrossLinearIcon extends StatelessWidget {
  /// Creates the `wi-fi-cross` icon in the linear style.
  const WiFiCrossLinearIcon({
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
    name: 'wi-fi-cross',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M8.66699 15.8931C10.5079 13.9061 13.4927 13.9061 15.3337 15.8931" stroke="currentColor" stroke-linecap="round"/>
<path d="M5.33301 12.295C7.42965 10.032 10.2681 9.05764 13.0035 9.37195" stroke="currentColor" stroke-linecap="round"/>
<path d="M2 8.69694C5.01816 5.43925 9.06111 3.96185 13.0088 4.26472" stroke="currentColor" stroke-linecap="round"/>
<path d="M12.0176 19.4644H12.0177" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M22 5.00002L16 11M16 5L21.9999 11" stroke="currentColor" stroke-linecap="round"/>''',
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
