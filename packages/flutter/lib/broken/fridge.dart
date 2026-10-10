// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik00IDEwVjEzQzQgMTYuNzcxMiA0IDE4LjY1NjkgNS4xNzE1NyAxOS44Mjg0QzYuMzQzMTUgMjEgOC4yMjg3NiAyMSAxMiAyMUMxNS43NzEyIDIxIDE3LjY1NjkgMjEgMTguODI4NCAxOS44Mjg0QzIwIDE4LjY1NjkgMjAgMTYuNzcxMiAyMCAxM1YxMEMyMCA2LjIyODc2IDIwIDQuMzQzMTUgMTguODI4NCAzLjE3MTU3QzE3LjY1NjkgMiAxNS43NzEyIDIgMTIgMkM4LjIyODc2IDIgNi4zNDMxNSAyIDUuMTcxNTcgMy4xNzE1N0M0LjUxODM5IDMuODI0NzUgNC4yMjkzNyA0LjY5OTg5IDQuMTAxNDkgNiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xNyAyMVYyMkgxNlYyMU04IDIxVjIySDdWMjEiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPgo8cGF0aCBkPSJNMjAgMTEuNUgxNU00IDExLjVIMTEiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTcgN0wxNyA5IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTE3IDE0TDE3IDE2IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class FridgeBrokenIcon extends StatelessWidget {
  /// Creates the `fridge` icon in the broken style.
  const FridgeBrokenIcon({
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
    name: 'fridge',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M4 10V13C4 16.7712 4 18.6569 5.17157 19.8284C6.34315 21 8.22876 21 12 21C15.7712 21 17.6569 21 18.8284 19.8284C20 18.6569 20 16.7712 20 13V10C20 6.22876 20 4.34315 18.8284 3.17157C17.6569 2 15.7712 2 12 2C8.22876 2 6.34315 2 5.17157 3.17157C4.51839 3.82475 4.22937 4.69989 4.10149 6" stroke="currentColor" stroke-linecap="round"/>
<path d="M17 21V22H16V21M8 21V22H7V21" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M20 11.5H15M4 11.5H11" stroke="currentColor" stroke-linecap="round"/>
<path d="M17 7L17 9" stroke="currentColor" stroke-linecap="round"/>
<path d="M17 14L17 16" stroke="currentColor" stroke-linecap="round"/>''',
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
