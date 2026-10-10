// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xMiAzQzcuNzQ4ODIgMyA1LjYyMzIzIDMgNC4zMDI1NiA0LjMxODAyQzMuMjk4IDUuMzIwNTYgMy4wNTc1NSA2Ljc4Nzg3IDMgOS4zTTIxIDkuM0MyMC45NDI0IDYuNzg3ODcgMjAuNzAyIDUuMzIwNTYgMTkuNjk3NCA0LjMxODAyQzE4Ljg3ODkgMy41MDExNiAxNy43NTEzIDMuMTkwNTYgMTYgMy4wNzI0Nk0yMSAxNC43QzIwLjk0MjQgMTcuMjEyMSAyMC43MDIgMTguNjc5NCAxOS42OTc0IDE5LjY4MkMxOC4zNzY4IDIxIDE2LjI1MTIgMjEgMTIgMjFDNy43NDg4MiAyMSA1LjYyMzIzIDIxIDQuMzAyNTYgMTkuNjgyQzMuMjk4MDEgMTguNjc5NCAzLjA1NzU2IDE3LjIxMjEgMyAxNC43IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTggOEgxNiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xMiAxNkwxMiA4IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTIyIDEySDIwIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTQgMTJIMiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class TextSquare2BrokenIcon extends StatelessWidget {
  /// Creates the `text-square-2` icon in the broken style.
  const TextSquare2BrokenIcon({
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
    name: 'text-square-2',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M12 3C7.74882 3 5.62323 3 4.30256 4.31802C3.298 5.32056 3.05755 6.78787 3 9.3M21 9.3C20.9424 6.78787 20.702 5.32056 19.6974 4.31802C18.8789 3.50116 17.7513 3.19056 16 3.07246M21 14.7C20.9424 17.2121 20.702 18.6794 19.6974 19.682C18.3768 21 16.2512 21 12 21C7.74882 21 5.62323 21 4.30256 19.682C3.29801 18.6794 3.05756 17.2121 3 14.7" stroke="currentColor" stroke-linecap="round"/>
<path d="M8 8H16" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 16L12 8" stroke="currentColor" stroke-linecap="round"/>
<path d="M22 12H20" stroke="currentColor" stroke-linecap="round"/>
<path d="M4 12H2" stroke="currentColor" stroke-linecap="round"/>''',
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
