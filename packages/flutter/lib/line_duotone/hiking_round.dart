// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `hiking-round` icon in the lineDuotone style.
class HikingRoundLineDuotoneIcon extends StatelessWidget {
  /// Creates the `hiking-round` icon in the lineDuotone style.
  const HikingRoundLineDuotoneIcon({
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
    name: 'hiking-round',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<circle cx="11.5" cy="4.5" r="2.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M19 10.5L18.5767 10.8528C17.0114 12.1571 14.8224 12.4112 13 11.5C11.8376 10.8025 10.3448 11.5521 10.2099 12.901L10.1413 13.5871C10.0547 14.4523 10.4667 15.2917 11.2041 15.7526L11.5374 15.9609C13.0884 16.9303 14.0952 18.5707 14.2573 20.3926L14.4004 22" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M19 22V8" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M9 17.5C9 17.5 8.57441 19.1192 8 20C7.39661 20.9252 6 22 6 22" stroke="currentColor" stroke-linecap="round"/>

<path opacity="0.5" d="M9 10L6.6114 10.1437C5.87495 10.1881 5.24941 10.6999 5.05846 11.4143C4.89043 12.043 5.09113 12.713 5.57688 13.1448L7.66367 15" stroke="currentColor" stroke-linecap="round"/>''',
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
