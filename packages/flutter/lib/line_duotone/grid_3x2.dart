// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0yIDExQzIgNy4yMjg3NiAyIDUuMzQzMTUgMy4xNzE1NyA0LjE3MTU3QzQuMzQzMTUgMyA2LjIyODc2IDMgMTAgM0gxNEMxNy43NzEyIDMgMTkuNjU2OSAzIDIwLjgyODQgNC4xNzE1N0MyMiA1LjM0MzE1IDIyIDcuMjI4NzYgMjIgMTFWMTNDMjIgMTYuNzcxMiAyMiAxOC42NTY5IDIwLjgyODQgMTkuODI4NEMxOS42NTY5IDIxIDE3Ljc3MTIgMjEgMTQgMjFIMTBDNi4yMjg3NiAyMSA0LjM0MzE1IDIxIDMuMTcxNTcgMTkuODI4NEMyIDE4LjY1NjkgMiAxNi43NzEyIDIgMTNWMTFaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMTUuMzMzIDIxTDE1LjMzMyAzTTIgMTJIMjJNOC42NjY1IDIxTDguNjY2NSAzIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class Grid3x2LineDuotoneIcon extends StatelessWidget {
  /// Creates the `grid-3x2` icon in the lineDuotone style.
  const Grid3x2LineDuotoneIcon({
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
    name: 'grid-3x2',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M2 11C2 7.22876 2 5.34315 3.17157 4.17157C4.34315 3 6.22876 3 10 3H14C17.7712 3 19.6569 3 20.8284 4.17157C22 5.34315 22 7.22876 22 11V13C22 16.7712 22 18.6569 20.8284 19.8284C19.6569 21 17.7712 21 14 21H10C6.22876 21 4.34315 21 3.17157 19.8284C2 18.6569 2 16.7712 2 13V11Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M15.333 21L15.333 3M2 12H22M8.6665 21L8.6665 3" stroke="currentColor" stroke-linecap="round"/>''',
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
