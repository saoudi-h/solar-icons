// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0zIDEyQzMgMTYuMjQyNiAzIDE4LjM2NCA0LjMxODAyIDE5LjY4MkM1LjYzNjA0IDIxIDcuNzU3MzYgMjEgMTIgMjFNMTIgM0M3Ljc1NzM2IDMgNS42MzYwNCAzIDQuMzE4MDIgNC4zMTgwMkMzLjUwMjQxIDUuMTMzNjMgMy4xOTE1MSA2LjI1Njg1IDMuMDczIDgiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTEgMjFIMTVDMTcuODI4NCAyMSAxOS4yNDI2IDIxIDIwLjEyMTMgMjAuMTIxM0MyMSAxOS4yNDI2IDIxIDE3LjgyODQgMjEgMTVWOUMyMSA2LjE3MTU3IDIxIDQuNzU3MzYgMjAuMTIxMyAzLjg3ODY4QzE5LjI0MjYgMyAxNy44Mjg0IDMgMTUgM0gxMSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtZGFzaGFycmF5PSIyLjUgMyIvPgo8cGF0aCBkPSJNMTIgMjJMMTIgMiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class MirrorLeftBrokenIcon extends StatelessWidget {
  /// Creates the `mirror-left` icon in the broken style.
  const MirrorLeftBrokenIcon({
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
    name: 'mirror-left',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M3 12C3 16.2426 3 18.364 4.31802 19.682C5.63604 21 7.75736 21 12 21M12 3C7.75736 3 5.63604 3 4.31802 4.31802C3.50241 5.13363 3.19151 6.25685 3.073 8" stroke="currentColor" stroke-linecap="round"/>
<path d="M11 21H15C17.8284 21 19.2426 21 20.1213 20.1213C21 19.2426 21 17.8284 21 15V9C21 6.17157 21 4.75736 20.1213 3.87868C19.2426 3 17.8284 3 15 3H11" stroke="currentColor" stroke-linecap="round" stroke-dasharray="2.5 3"/>
<path d="M12 22L12 2" stroke="currentColor" stroke-linecap="round"/>''',
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
