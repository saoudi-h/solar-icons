// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxjaXJjbGUgY3g9IjE0IiBjeT0iNCIgcj0iMiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxjaXJjbGUgb3BhY2l0eT0iMC41IiBjeD0iNiIgY3k9IjE4IiByPSIzIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPGNpcmNsZSBvcGFjaXR5PSIwLjUiIGN4PSIxOCIgY3k9IjE4IiByPSIzIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTE4LjQ5OTkgOS45OTk5N0gxNC41ODIyQzE0LjIwNTIgOS45OTk5NyAxMy44MzkzIDkuODcyMTMgMTMuNTQ0NCA5LjYzNzMzTDExLjM4NiA3LjkxOTE2QzEwLjExOTMgNi45MTA4NCA4LjI1MTY4IDcuMjcxMDIgNy40NTA4MyA4LjY3ODA2QzYuNjc1NjIgMTAuMDQwMSA3LjI1MTkyIDExLjc3MzYgOC42ODgyOSAxMi40MDA0TDExLjc3OSAxMy43NDlDMTIuNzMxMiAxNC4xNjQ2IDEzLjE2OTUgMTUuMjcwOCAxMi43NjAzIDE2LjIyNThMMTEuOTk5OSAxOCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class BicyclingRoundLineDuotoneIcon extends StatelessWidget {
  /// Creates the `bicycling-round` icon in the lineDuotone style.
  const BicyclingRoundLineDuotoneIcon({
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
    name: 'bicycling-round',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<circle cx="14" cy="4" r="2" stroke="currentColor" stroke-linecap="round"/>
<path d="M18.4999 9.99997H14.5822C14.2052 9.99997 13.8393 9.87213 13.5444 9.63733L11.386 7.91916C10.1193 6.91084 8.25168 7.27102 7.45083 8.67806C6.67562 10.0401 7.25192 11.7736 8.68829 12.4004L11.779 13.749C12.7312 14.1646 13.1695 15.2708 12.7603 16.2258L11.9999 18" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<circle opacity="0.5" cx="6" cy="18" r="3" stroke="currentColor" stroke-linecap="round"/>

<circle opacity="0.5" cx="18" cy="18" r="3" stroke="currentColor" stroke-linecap="round"/>''',
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
