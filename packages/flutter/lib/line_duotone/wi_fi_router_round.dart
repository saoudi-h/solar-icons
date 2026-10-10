// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `wi-fi-router-round` icon in the lineDuotone style.
class WiFiRouterRoundLineDuotoneIcon extends StatelessWidget {
  /// Creates the `wi-fi-router-round` icon in the lineDuotone style.
  const WiFiRouterRoundLineDuotoneIcon({
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
    name: 'wi-fi-router-round',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M2 15C2 12.2386 4.23858 10 7 10H17C19.7614 10 22 12.2386 22 15C22 17.7614 19.7614 20 17 20H7C4.23858 20 2 17.7614 2 15Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M8.5 15C8.5 15.8284 7.82843 16.5 7 16.5C6.17157 16.5 5.5 15.8284 5.5 15C5.5 14.1716 6.17157 13.5 7 13.5C7.82843 13.5 8.5 14.1716 8.5 15Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M16.5 7H16.5001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M18 20L19 22" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M6 20L5 22" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M12 15H18.5" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M21.5833 5.39702C20.7574 3.40286 18.7924 2 16.4996 2C14.2069 2 12.2419 3.40286 11.416 5.39702" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M19.3806 6.65811C19.0167 5.41107 17.865 4.5 16.5004 4.5C15.1358 4.5 13.984 5.41107 13.6201 6.65811" stroke="currentColor" stroke-linecap="round"/>''',
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
