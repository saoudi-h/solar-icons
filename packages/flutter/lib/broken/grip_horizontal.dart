// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxjaXJjbGUgY3g9IjUiIGN5PSIxNS41MTE3IiByPSIwLjc1IiB0cmFuc2Zvcm09InJvdGF0ZSgtMTgwIDUgMTUuNTExNykiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8Y2lyY2xlIGN4PSIxMiIgY3k9IjE1LjUxMTciIHI9IjAuNzUiIHRyYW5zZm9ybT0icm90YXRlKC0xODAgMTIgMTUuNTExNykiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8Y2lyY2xlIGN4PSIxOSIgY3k9IjE1LjQ5NjEiIHI9IjAuNzUiIHRyYW5zZm9ybT0icm90YXRlKC0xODAgMTkgMTUuNDk2MSkiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8Y2lyY2xlIGN4PSI1IiBjeT0iOC41MDM5MSIgcj0iMC43NSIgdHJhbnNmb3JtPSJyb3RhdGUoLTE4MCA1IDguNTAzOTEpIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPGNpcmNsZSBjeD0iMTIiIGN5PSI4LjUwMzkxIiByPSIwLjc1IiB0cmFuc2Zvcm09InJvdGF0ZSgtMTgwIDEyIDguNTAzOTEpIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPGNpcmNsZSBjeD0iMTkiIGN5PSI4LjQ4ODI4IiByPSIwLjc1IiB0cmFuc2Zvcm09InJvdGF0ZSgtMTgwIDE5IDguNDg4MjgpIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class GripHorizontalBrokenIcon extends StatelessWidget {
  /// Creates the `grip-horizontal` icon in the broken style.
  const GripHorizontalBrokenIcon({
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
    name: 'grip-horizontal',
    style: SolarIconStyle.broken,
    body:
        r'''<circle cx="5" cy="15.5117" r="0.75" transform="rotate(-180 5 15.5117)" stroke="currentColor" stroke-linecap="round"/>
<circle cx="12" cy="15.5117" r="0.75" transform="rotate(-180 12 15.5117)" stroke="currentColor" stroke-linecap="round"/>
<circle cx="19" cy="15.4961" r="0.75" transform="rotate(-180 19 15.4961)" stroke="currentColor" stroke-linecap="round"/>
<circle cx="5" cy="8.50391" r="0.75" transform="rotate(-180 5 8.50391)" stroke="currentColor" stroke-linecap="round"/>
<circle cx="12" cy="8.50391" r="0.75" transform="rotate(-180 12 8.50391)" stroke="currentColor" stroke-linecap="round"/>
<circle cx="19" cy="8.48828" r="0.75" transform="rotate(-180 19 8.48828)" stroke="currentColor" stroke-linecap="round"/>''',
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
