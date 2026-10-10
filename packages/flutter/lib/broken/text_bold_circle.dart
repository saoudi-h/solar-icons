// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik04IDcuNTIxNzRDOCA2LjY4MTMxIDguNjgxMzEgNiA5LjUyMTc0IDZIMTJDMTMuNjU2OSA2IDE1IDcuMzQzMTUgMTUgOUMxNSAxMC42NTY5IDEzLjY1NjkgMTIgMTIgMTJIOFY3LjUyMTc0WiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik04IDEySDEzQzE0LjY1NjkgMTIgMTYgMTMuMzQzMSAxNiAxNUMxNiAxNi42NTY5IDE0LjY1NjkgMTggMTMgMThIOS4xNzY0N0M4LjUyNjcyIDE4IDggMTcuNDczMyA4IDE2LjgyMzVWMTJaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTcgMy4zMzc4MkM4LjQ3MDg3IDIuNDg2OTcgMTAuMTc4NiAyIDEyIDJDMTcuNTIyOCAyIDIyIDYuNDc3MTUgMjIgMTJDMjIgMTcuNTIyOCAxNy41MjI4IDIyIDEyIDIyQzYuNDc3MTUgMjIgMiAxNy41MjI4IDIgMTJDMiAxMC4xNzg2IDIuNDg2OTcgOC40NzA4NyAzLjMzNzgyIDciIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class TextBoldCircleBrokenIcon extends StatelessWidget {
  /// Creates the `text-bold-circle` icon in the broken style.
  const TextBoldCircleBrokenIcon({
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
    name: 'text-bold-circle',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M8 7.52174C8 6.68131 8.68131 6 9.52174 6H12C13.6569 6 15 7.34315 15 9C15 10.6569 13.6569 12 12 12H8V7.52174Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M8 12H13C14.6569 12 16 13.3431 16 15C16 16.6569 14.6569 18 13 18H9.17647C8.52672 18 8 17.4733 8 16.8235V12Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M7 3.33782C8.47087 2.48697 10.1786 2 12 2C17.5228 2 22 6.47715 22 12C22 17.5228 17.5228 22 12 22C6.47715 22 2 17.5228 2 12C2 10.1786 2.48697 8.47087 3.33782 7" stroke="currentColor" stroke-linecap="round"/>''',
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
