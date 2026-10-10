// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxjaXJjbGUgY3g9IjEyIiBjeT0iMTYiIHI9IjIiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNNiAxMFY4QzYgNy42NTkyOSA2LjAyODQgNy4zMjUyMSA2LjA4Mjk2IDdNMTggMTBWOEMxOCA0LjY4NjI5IDE1LjMxMzcgMiAxMiAyQzEwLjIwOCAyIDguNTk5NDIgMi43ODU2MyA3LjUgNC4wMzEyNiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xMSAyMkg4QzUuMTcxNTcgMjIgMy43NTczNiAyMiAyLjg3ODY4IDIxLjEyMTNDMiAyMC4yNDI2IDIgMTguODI4NCAyIDE2QzIgMTMuMTcxNiAyIDExLjc1NzQgMi44Nzg2OCAxMC44Nzg3QzMuNzU3MzYgMTAgNS4xNzE1NyAxMCA4IDEwSDE2QzE4LjgyODQgMTAgMjAuMjQyNiAxMCAyMS4xMjEzIDEwLjg3ODdDMjIgMTEuNzU3NCAyMiAxMy4xNzE2IDIyIDE2QzIyIDE4LjgyODQgMjIgMjAuMjQyNiAyMS4xMjEzIDIxLjEyMTNDMjAuMjQyNiAyMiAxOC44Mjg0IDIyIDE2IDIySDE1IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class LockKeyholeBrokenIcon extends StatelessWidget {
  /// Creates the `lock-keyhole` icon in the broken style.
  const LockKeyholeBrokenIcon({
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
    name: 'lock-keyhole',
    style: SolarIconStyle.broken,
    body:
        r'''<circle cx="12" cy="16" r="2" stroke="currentColor" stroke-linecap="round"/>
<path d="M6 10V8C6 7.65929 6.0284 7.32521 6.08296 7M18 10V8C18 4.68629 15.3137 2 12 2C10.208 2 8.59942 2.78563 7.5 4.03126" stroke="currentColor" stroke-linecap="round"/>
<path d="M11 22H8C5.17157 22 3.75736 22 2.87868 21.1213C2 20.2426 2 18.8284 2 16C2 13.1716 2 11.7574 2.87868 10.8787C3.75736 10 5.17157 10 8 10H16C18.8284 10 20.2426 10 21.1213 10.8787C22 11.7574 22 13.1716 22 16C22 18.8284 22 20.2426 21.1213 21.1213C20.2426 22 18.8284 22 16 22H15" stroke="currentColor" stroke-linecap="round"/>''',
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
