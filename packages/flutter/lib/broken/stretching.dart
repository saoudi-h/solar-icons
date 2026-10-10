// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxjaXJjbGUgY3g9IjE0LjUiIGN5PSI0LjUiIHI9IjIuNSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik01IDIyLjAwMDJMOC44NDg1NiAyMC42Mjc0QzkuMzA0MzcgMjAuNDY0OCA5LjY4NTc2IDIwLjE0MjUgOS45MjIwNCAxOS43MjAyTTE5IDIyLjAwMDJWMTYuNzY4MUMxOSAxNS41MzU2IDE3Ljg5NTggMTQuNTk2MyAxNi42NzkyIDE0Ljc5NEwxNS42NjY3IDE0Ljk1ODZNOC41IDE0LjAwMDJMNy44ODU5NCAxMy40MDE1QzcuMTIwMzEgMTIuNjU1IDcuMzU5MzUgMTEuMzcgOC4zNDIyMSAxMC45NDg4TDEwLjc5OCA5Ljg5NjM0QzExLjc4NzggOS40NzIxMyAxMi44ODg5IDEwLjE5ODIgMTIuODg4OSAxMS4yNzUxVjEzLjg5NTVDMTIuODg4OSAxNC4yMzc0IDEyLjgwMTIgMTQuNTczNiAxMi42MzQzIDE0Ljg3MkwxMS45NTYyIDE2LjA4NCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIi8+Cjwvc3ZnPgo=)
class StretchingBrokenIcon extends StatelessWidget {
  /// Creates the `stretching` icon in the broken style.
  const StretchingBrokenIcon({
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
    name: 'stretching',
    style: SolarIconStyle.broken,
    body:
        r'''<circle cx="14.5" cy="4.5" r="2.5" stroke="currentColor" stroke-linecap="round"/>
<path d="M5 22.0002L8.84856 20.6274C9.30437 20.4648 9.68576 20.1425 9.92204 19.7202M19 22.0002V16.7681C19 15.5356 17.8958 14.5963 16.6792 14.794L15.6667 14.9586M8.5 14.0002L7.88594 13.4015C7.12031 12.655 7.35935 11.37 8.34221 10.9488L10.798 9.89634C11.7878 9.47213 12.8889 10.1982 12.8889 11.2751V13.8955C12.8889 14.2374 12.8012 14.5736 12.6343 14.872L11.9562 16.084" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
