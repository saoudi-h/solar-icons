// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `hiking-minimalistic` icon in the lineDuotone style.
class HikingMinimalisticLineDuotoneIcon extends StatelessWidget {
  /// Creates the `hiking-minimalistic` icon in the lineDuotone style.
  const HikingMinimalisticLineDuotoneIcon({
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
    name: 'hiking-minimalistic',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<circle cx="11.5" cy="5.5" r="2.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M19 9.5L18.5767 9.85275C17.0114 11.1571 14.8224 11.4112 13 10.5C11.8376 9.80255 10.3448 10.5521 10.2099 11.901L10.1413 12.5871C10.0547 13.4523 10.4667 14.2917 11.2041 14.7526L11.5374 14.9609C13.0884 15.9303 14.0952 17.5707 14.2573 19.3926L14.4004 21" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M19 21V7" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M9 16.5C9 16.5 8.57441 18.1192 8 19C7.39661 19.9252 6 21 6 21" stroke="currentColor" stroke-linecap="round"/>''',
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
