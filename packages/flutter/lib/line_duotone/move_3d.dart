// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xMy4wMTM3IDcuMzM4MUw5LjgzNzg1IDQuMTYyMzVMNi42NjIxNSA3LjMzODAxIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPHBhdGggZD0iTTQuMTYyMzQgMTUuMzQ2N0w0LjE2MjQgMTkuODM3OUw4LjY1MzQ4IDE5LjgzOCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIi8+CjxwYXRoIGQ9Ik0xNi42NjIgMTcuMzM3NkwxOS44Mzc2IDE0LjE2MjFMMTYuNjYyIDEwLjk4NjgiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPgo8cGF0aCBvcGFjaXR5PSIwLjUiIGQ9Ik05LjgzNzc2IDQuMTYyMzVMOS44Mzc1NSAxNC4xNjIxTTkuODM3NTUgMTQuMTYyMUwxOS44Mzc2IDE0LjE2MjJNOS44Mzc1NSAxNC4xNjIxTDQuMTYyNiAxOS44Mzc5IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class Move3dLineDuotoneIcon extends StatelessWidget {
  /// Creates the `move-3d` icon in the lineDuotone style.
  const Move3dLineDuotoneIcon({
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
    name: 'move-3d',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M13.0137 7.3381L9.83785 4.16235L6.66215 7.33801" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M4.16234 15.3467L4.1624 19.8379L8.65348 19.838" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M16.662 17.3376L19.8376 14.1621L16.662 10.9868" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M9.83776 4.16235L9.83755 14.1621M9.83755 14.1621L19.8376 14.1622M9.83755 14.1621L4.1626 19.8379" stroke="currentColor" stroke-linecap="round"/>''',
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
