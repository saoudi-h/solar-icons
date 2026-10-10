// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `wi-fi-router` icon in the lineDuotone style.
class WiFiRouterLineDuotoneIcon extends StatelessWidget {
  /// Creates the `wi-fi-router` icon in the lineDuotone style.
  const WiFiRouterLineDuotoneIcon({
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
    name: 'wi-fi-router',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M2 15C2 13.1144 2 12.1716 2.58579 11.5858C3.17157 11 4.11438 11 6 11H18C19.8856 11 20.8284 11 21.4142 11.5858C22 12.1716 22 13.1144 22 15C22 16.8856 22 17.8284 21.4142 18.4142C20.8284 19 19.8856 19 18 19H6C4.11438 19 3.17157 19 2.58579 18.4142C2 17.8284 2 16.8856 2 15Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M7 11L3 4" stroke="currentColor" stroke-linecap="round"/>
<path d="M17 11L21 4" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 7H12.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M14 15L18 15" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M17.1673 5.39702C16.3414 3.40286 14.3763 2 12.0836 2C9.79092 2 7.82586 3.40286 7 5.39702" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M14.9646 6.65811C14.6007 5.41107 13.4489 4.5 12.0844 4.5C10.7198 4.5 9.568 5.41107 9.2041 6.65811" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M9 15H9.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>

<path opacity="0.5" d="M6 15H6.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
