// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xNi41NTAxIDIuMDg4NTZDMTUuMzM3NSAyIDEzLjg1MDMgMiAxMiAyQzcuMjg1OTUgMiA0LjkyODkzIDIgMy40NjQ0NyAzLjQ2NDQ3QzIgNC45Mjg5MyAyIDcuMjg1OTUgMiAxMkMyIDE2LjcxNCAyIDE5LjA3MTEgMy40NjQ0NyAyMC41MzU1QzQuOTI4OTMgMjIgNy4yODU5NSAyMiAxMiAyMiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0yMi4wMDAxIDExLjk5OTlDMjIuMDAwMSA3LjI4NTg0IDIyLjAwMDEgNC45Mjg4MiAyMC41MzU2IDMuNDY0MzYiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTQuNSAxNy43Mjk1TDE2LjYgMjAuMjI5NUwyMC41IDE1LjIyOTUiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPgo8cGF0aCBkPSJNMjIgMTJIMTBNMiAxMkg2IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTEyLjAwNDkgMjIuMDA0OUwxMi4wMDQ5IDIuMDA0ODgiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class Grid2x2CheckBrokenIcon extends StatelessWidget {
  /// Creates the `grid-2x2-check` icon in the broken style.
  const Grid2x2CheckBrokenIcon({
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
    name: 'grid-2x2-check',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M16.5501 2.08856C15.3375 2 13.8503 2 12 2C7.28595 2 4.92893 2 3.46447 3.46447C2 4.92893 2 7.28595 2 12C2 16.714 2 19.0711 3.46447 20.5355C4.92893 22 7.28595 22 12 22" stroke="currentColor" stroke-linecap="round"/>
<path d="M22.0001 11.9999C22.0001 7.28584 22.0001 4.92882 20.5356 3.46436" stroke="currentColor" stroke-linecap="round"/>
<path d="M14.5 17.7295L16.6 20.2295L20.5 15.2295" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M22 12H10M2 12H6" stroke="currentColor" stroke-linecap="round"/>
<path d="M12.0049 22.0049L12.0049 2.00488" stroke="currentColor" stroke-linecap="round"/>''',
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
