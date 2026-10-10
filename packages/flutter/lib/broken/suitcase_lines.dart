// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xNiA2QzE2IDQuMTE0MzggMTYgMy4xNzE1NyAxNS40MTQyIDIuNTg1NzlDMTQuODI4NCAyIDEzLjg4NTYgMiAxMiAyQzEwLjExNDQgMiA5LjE3MTU3IDIgOC41ODU3OSAyLjU4NTc5QzggMy4xNzE1NyA4IDQuMTE0MzggOCA2IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTIuMTA5MTMgMTFMMjIgMTEiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMjIgMTdMMTguNSAxN00yLjUgMTdMMTMuNSAxNyIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xMCAyMkM2LjIyODc2IDIyIDQuMzQzMTUgMjIgMy4xNzE1NyAyMC44Mjg0QzIgMTkuNjU2OSAyIDE3Ljc3MTIgMiAxNEMyIDEwLjIyODggMiA4LjM0MzE1IDMuMTcxNTcgNy4xNzE1N0M0LjM0MzE1IDYgNi4yMjg3NiA2IDEwIDZNMTQgMjJDMTcuNzcxMiAyMiAxOS42NTY5IDIyIDIwLjgyODQgMjAuODI4NEMyMiAxOS42NTY5IDIyIDE3Ljc3MTIgMjIgMTRDMjIgMTAuMjI4OCAyMiA4LjM0MzE1IDIwLjgyODQgNy4xNzE1N0MxOS42NTY5IDYgMTcuNzcxMiA2IDE0IDYiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class SuitcaseLinesBrokenIcon extends StatelessWidget {
  /// Creates the `suitcase-lines` icon in the broken style.
  const SuitcaseLinesBrokenIcon({
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
    name: 'suitcase-lines',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M16 6C16 4.11438 16 3.17157 15.4142 2.58579C14.8284 2 13.8856 2 12 2C10.1144 2 9.17157 2 8.58579 2.58579C8 3.17157 8 4.11438 8 6" stroke="currentColor" stroke-linecap="round"/>
<path d="M2.10913 11L22 11" stroke="currentColor" stroke-linecap="round"/>
<path d="M22 17L18.5 17M2.5 17L13.5 17" stroke="currentColor" stroke-linecap="round"/>
<path d="M10 22C6.22876 22 4.34315 22 3.17157 20.8284C2 19.6569 2 17.7712 2 14C2 10.2288 2 8.34315 3.17157 7.17157C4.34315 6 6.22876 6 10 6M14 22C17.7712 22 19.6569 22 20.8284 20.8284C22 19.6569 22 17.7712 22 14C22 10.2288 22 8.34315 20.8284 7.17157C19.6569 6 17.7712 6 14 6" stroke="currentColor" stroke-linecap="round"/>''',
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
