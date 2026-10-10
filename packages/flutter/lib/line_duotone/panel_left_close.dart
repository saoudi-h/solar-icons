// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0yMiAxM0MyMiAxNi43NzEyIDIyIDE4LjY1NjkgMjAuODI4NCAxOS44Mjg0QzE5LjY1NjkgMjEgMTcuNzcxMiAyMSAxNCAyMUwxMCAyMUM2LjIyODc2IDIxIDQuMzQzMTUgMjEgMy4xNzE1NyAxOS44Mjg0QzIgMTguNjU2OSAyIDE2Ljc3MTIgMiAxM0wyIDExQzIgNy4yMjg3NiAyIDUuMzQzMTQgMy4xNzE1OCA0LjE3MTU3QzQuMzQzMTUgMyA2LjIyODc3IDMgMTAgM0wxNCAzQzE3Ljc3MTIgMyAxOS42NTY5IDMgMjAuODI4NCA0LjE3MTU3QzIyIDUuMzQzMTUgMjIgNy4yMjg3NiAyMiAxMUwyMiAxM1oiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBvcGFjaXR5PSIwLjUiIGQ9Ik05IDNMOSAyMSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xNi43ODI3IDE1TDE0LjIxMTMgMTJMMTYuNzgyNyA5IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPC9zdmc+Cg==)
class PanelLeftCloseLineDuotoneIcon extends StatelessWidget {
  /// Creates the `panel-left-close` icon in the lineDuotone style.
  const PanelLeftCloseLineDuotoneIcon({
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
    name: 'panel-left-close',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M22 13C22 16.7712 22 18.6569 20.8284 19.8284C19.6569 21 17.7712 21 14 21L10 21C6.22876 21 4.34315 21 3.17157 19.8284C2 18.6569 2 16.7712 2 13L2 11C2 7.22876 2 5.34314 3.17158 4.17157C4.34315 3 6.22877 3 10 3L14 3C17.7712 3 19.6569 3 20.8284 4.17157C22 5.34315 22 7.22876 22 11L22 13Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M16.7827 15L14.2113 12L16.7827 9" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M9 3L9 21" stroke="currentColor" stroke-linecap="round"/>''',
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
