// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxjaXJjbGUgY3g9IjExLjUiIGN5PSI1LjUiIHI9IjIuNSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik05IDE2LjVDOSAxNi41IDguNTc0NDEgMTguMTE5MiA4IDE5QzcuMzk2NjEgMTkuOTI1MiA2IDIxIDYgMjEiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTkgOS41TDE4LjU3NjcgOS44NTI3NUMxNy4wMTE0IDExLjE1NzEgMTQuODIyNCAxMS40MTEyIDEzIDEwLjVDMTEuODM3NiA5LjgwMjU1IDEwLjM0NDggMTAuNTUyMSAxMC4yMDk5IDExLjkwMUwxMC4xNDEzIDEyLjU4NzFDMTAuMDU0NyAxMy40NTIzIDEwLjQ2NjcgMTQuMjkxNyAxMS4yMDQxIDE0Ljc1MjZMMTEuNTM3NCAxNC45NjA5QzEzLjA4ODQgMTUuOTMwMyAxNC4wOTUyIDE3LjU3MDcgMTQuMjU3MyAxOS4zOTI2TDE0LjQwMDQgMjEiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTkgMTRWN00xOSAyMVYxOCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class HikingMinimalisticBrokenIcon extends StatelessWidget {
  /// Creates the `hiking-minimalistic` icon in the broken style.
  const HikingMinimalisticBrokenIcon({
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
    style: SolarIconStyle.broken,
    body:
        r'''<circle cx="11.5" cy="5.5" r="2.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M9 16.5C9 16.5 8.57441 18.1192 8 19C7.39661 19.9252 6 21 6 21" stroke="currentColor" stroke-linecap="round"/>
<path d="M19 9.5L18.5767 9.85275C17.0114 11.1571 14.8224 11.4112 13 10.5C11.8376 9.80255 10.3448 10.5521 10.2099 11.901L10.1413 12.5871C10.0547 13.4523 10.4667 14.2917 11.2041 14.7526L11.5374 14.9609C13.0884 15.9303 14.0952 17.5707 14.2573 19.3926L14.4004 21" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M19 14V7M19 21V18" stroke="currentColor" stroke-linecap="round"/>''',
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
