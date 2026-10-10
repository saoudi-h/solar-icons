// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xMy4wMTM3IDcuMzM4MUw5LjgzNzg1IDQuMTYyMzVMNi42NjIxNSA3LjMzODAxIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPHBhdGggZD0iTTQuMTYyNTggMTUuMzQ2N0w0LjE2MjY0IDE5LjgzNzlMOC42NTM3MyAxOS44MzgiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTYuNjYyMyAxNy4zMzc2TDE5LjgzNzkgMTQuMTYyMUwxNi42NjIzIDEwLjk4NjgiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTkuODM3NiAxNC4xNjIxTDE1Ljk5NjYgMTQuMTYyMSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xMiAxNC4xNjIxSDkuODM3NTVNOS44Mzc1NSAxNC4xNjIxTDQuMTYyNiAxOS44Mzc5TTkuODM3NTUgMTQuMTYyMUw5LjgzNzc2IDQuMTYyMzUiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class Move3dBrokenIcon extends StatelessWidget {
  /// Creates the `move-3d` icon in the broken style.
  const Move3dBrokenIcon({
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
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M13.0137 7.3381L9.83785 4.16235L6.66215 7.33801" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M4.16258 15.3467L4.16264 19.8379L8.65373 19.838" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M16.6623 17.3376L19.8379 14.1621L16.6623 10.9868" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M19.8376 14.1621L15.9966 14.1621" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 14.1621H9.83755M9.83755 14.1621L4.1626 19.8379M9.83755 14.1621L9.83776 4.16235" stroke="currentColor" stroke-linecap="round"/>''',
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
