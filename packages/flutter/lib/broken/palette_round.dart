// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0yIDhWNkMyIDMuNzkwODYgMy43OTA4NiAyIDYgMkM4LjIwOTE0IDIgMTAgMy43OTA4NiAxMCA2VjE4QzEwIDIwLjIwOTEgOC4yMDkxNCAyMiA2IDIyQzMuNzkwODYgMjIgMiAyMC4yMDkxIDIgMThWMTIiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTAgOC4yNDI2OEwxMy4zMTM3IDQuOTI5MDJDMTQuODc1OCAzLjM2NjkyIDE3LjQwODQgMy4zNjY5MiAxOC45NzA1IDQuOTI5MDJDMjAuNTMyNiA2LjQ5MTEyIDIwLjUzMjYgOS4wMjM3OCAxOC45NzA1IDEwLjU4NTlMOS4zMDY0IDIwLjI1IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTYgMjJMMTMgMjJNMTUuNTU0NyAxNEgxOEMyMC4yMDkxIDE0IDIyIDE1Ljc5MDkgMjIgMThDMjIgMjAuMjA5MSAyMC4yMDkxIDIyIDE4IDIySDE3IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTcgMThDNyAxOC41NTIzIDYuNTUyMjggMTkgNiAxOUM1LjQ0NzcyIDE5IDUgMTguNTUyMyA1IDE4QzUgMTcuNDQ3NyA1LjQ0NzcyIDE3IDYgMTdDNi41NTIyOCAxNyA3IDE3LjQ0NzcgNyAxOFoiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class PaletteRoundBrokenIcon extends StatelessWidget {
  /// Creates the `palette-round` icon in the broken style.
  const PaletteRoundBrokenIcon({
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
    name: 'palette-round',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M2 8V6C2 3.79086 3.79086 2 6 2C8.20914 2 10 3.79086 10 6V18C10 20.2091 8.20914 22 6 22C3.79086 22 2 20.2091 2 18V12" stroke="currentColor" stroke-linecap="round"/>
<path d="M10 8.24268L13.3137 4.92902C14.8758 3.36692 17.4084 3.36692 18.9705 4.92902C20.5326 6.49112 20.5326 9.02378 18.9705 10.5859L9.3064 20.25" stroke="currentColor" stroke-linecap="round"/>
<path d="M6 22L13 22M15.5547 14H18C20.2091 14 22 15.7909 22 18C22 20.2091 20.2091 22 18 22H17" stroke="currentColor" stroke-linecap="round"/>
<path d="M7 18C7 18.5523 6.55228 19 6 19C5.44772 19 5 18.5523 5 18C5 17.4477 5.44772 17 6 17C6.55228 17 7 17.4477 7 18Z" stroke="currentColor" stroke-linecap="round"/>''',
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
