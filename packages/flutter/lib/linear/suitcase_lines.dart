// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0yIDE0QzIgMTAuMjI4OCAyIDguMzQzMTUgMy4xNzE1NyA3LjE3MTU3QzQuMzQzMTUgNiA2LjIyODc2IDYgMTAgNkgxNEMxNy43NzEyIDYgMTkuNjU2OSA2IDIwLjgyODQgNy4xNzE1N0MyMiA4LjM0MzE1IDIyIDEwLjIyODggMjIgMTRDMjIgMTcuNzcxMiAyMiAxOS42NTY5IDIwLjgyODQgMjAuODI4NEMxOS42NTY5IDIyIDE3Ljc3MTIgMjIgMTQgMjJIMTBDNi4yMjg3NiAyMiA0LjM0MzE1IDIyIDMuMTcxNTcgMjAuODI4NEMyIDE5LjY1NjkgMiAxNy43NzEyIDIgMTRaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTE2IDZDMTYgNC4xMTQzOCAxNiAzLjE3MTU3IDE1LjQxNDIgMi41ODU3OUMxNC44Mjg0IDIgMTMuODg1NiAyIDEyIDJDMTAuMTE0NCAyIDkuMTcxNTcgMiA4LjU4NTc5IDIuNTg1NzlDOCAzLjE3MTU3IDggNC4xMTQzOCA4IDYiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMiAxMUwyMiAxMSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0yIDE3TDIyIDE3IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class SuitcaseLinesLinearIcon extends StatelessWidget {
  /// Creates the `suitcase-lines` icon in the linear style.
  const SuitcaseLinesLinearIcon({
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
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M2 14C2 10.2288 2 8.34315 3.17157 7.17157C4.34315 6 6.22876 6 10 6H14C17.7712 6 19.6569 6 20.8284 7.17157C22 8.34315 22 10.2288 22 14C22 17.7712 22 19.6569 20.8284 20.8284C19.6569 22 17.7712 22 14 22H10C6.22876 22 4.34315 22 3.17157 20.8284C2 19.6569 2 17.7712 2 14Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M16 6C16 4.11438 16 3.17157 15.4142 2.58579C14.8284 2 13.8856 2 12 2C10.1144 2 9.17157 2 8.58579 2.58579C8 3.17157 8 4.11438 8 6" stroke="currentColor" stroke-linecap="round"/>
<path d="M2 11L22 11" stroke="currentColor" stroke-linecap="round"/>
<path d="M2 17L22 17" stroke="currentColor" stroke-linecap="round"/>''',
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
