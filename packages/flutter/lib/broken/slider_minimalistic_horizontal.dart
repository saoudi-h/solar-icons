// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik00LjUgM0wxOS41IDMiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNNC41IDIxTDE5LjUgMjEiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNOCA2QzUuMTcxNTcgNiAzLjc1NzM2IDYgMi44Nzg2OCA2Ljg3ODY4QzIgNy43NTczNiAyIDkuMTcxNTcgMiAxMkMyIDE0LjgyODQgMiAxNi4yNDI2IDIuODc4NjggMTcuMTIxM0MzLjc1NzM2IDE4IDUuMTcxNTcgMTggOCAxOEwxNiAxOEMxOC44Mjg0IDE4IDIwLjI0MjYgMTggMjEuMTIxMyAxNy4xMjEzQzIyIDE2LjI0MjYgMjIgMTQuODI4NCAyMiAxMkMyMiA5LjE3MTU3IDIyIDcuNzU3MzYgMjEuMTIxMyA2Ljg3ODY4QzIwLjI0MjYgNiAxOC44Mjg0IDYgMTYgNkwxMiA2IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class SliderMinimalisticHorizontalBrokenIcon extends StatelessWidget {
  /// Creates the `slider-minimalistic-horizontal` icon in the broken style.
  const SliderMinimalisticHorizontalBrokenIcon({
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
    name: 'slider-minimalistic-horizontal',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M4.5 3L19.5 3" stroke="currentColor" stroke-linecap="round"/>
<path d="M4.5 21L19.5 21" stroke="currentColor" stroke-linecap="round"/>
<path d="M8 6C5.17157 6 3.75736 6 2.87868 6.87868C2 7.75736 2 9.17157 2 12C2 14.8284 2 16.2426 2.87868 17.1213C3.75736 18 5.17157 18 8 18L16 18C18.8284 18 20.2426 18 21.1213 17.1213C22 16.2426 22 14.8284 22 12C22 9.17157 22 7.75736 21.1213 6.87868C20.2426 6 18.8284 6 16 6L12 6" stroke="currentColor" stroke-linecap="round"/>''',
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
