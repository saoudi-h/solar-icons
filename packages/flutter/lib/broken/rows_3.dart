// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0zIDguNjY2NUwyMSA4LjY2NjUiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTMgMkwxMSAyQzcuMjI4NzYgMiA1LjM0MzE1IDIgNC4xNzE1NyAzLjE3MTU3QzMgNC4zNDMxNSAzIDYuMjI4NzYgMyAxMEwzIDE0QzMgMTcuNzcxMiAzIDE5LjY1NjkgNC4xNzE1NyAyMC44Mjg0QzUuMzQzMTUgMjIgNy4yMjg3NiAyMiAxMSAyMkwxMyAyMkMxNi43NzEyIDIyIDE4LjY1NjkgMjIgMTkuODI4NCAyMC44Mjg0QzIxIDE5LjY1NjkgMjEgMTcuNzcxMiAyMSAxNEwyMSAxMEMyMSA2LjIyODc2IDIxIDQuMzQzMTUgMTkuODI4NCAzLjE3MTU3QzE5LjE3NTIgMi41MTgzOSAxOC4zMDAxIDIuMjI5MzcgMTcgMi4xMDE0OSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0yMSAxNS4zMzNMMTEgMTUuMzMzTTcgMTUuMzMzTDMgMTUuMzMzIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class Rows3BrokenIcon extends StatelessWidget {
  /// Creates the `rows-3` icon in the broken style.
  const Rows3BrokenIcon({
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
    name: 'rows-3',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M3 8.6665L21 8.6665" stroke="currentColor" stroke-linecap="round"/>
<path d="M13 2L11 2C7.22876 2 5.34315 2 4.17157 3.17157C3 4.34315 3 6.22876 3 10L3 14C3 17.7712 3 19.6569 4.17157 20.8284C5.34315 22 7.22876 22 11 22L13 22C16.7712 22 18.6569 22 19.8284 20.8284C21 19.6569 21 17.7712 21 14L21 10C21 6.22876 21 4.34315 19.8284 3.17157C19.1752 2.51839 18.3001 2.22937 17 2.10149" stroke="currentColor" stroke-linecap="round"/>
<path d="M21 15.333L11 15.333M7 15.333L3 15.333" stroke="currentColor" stroke-linecap="round"/>''',
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
