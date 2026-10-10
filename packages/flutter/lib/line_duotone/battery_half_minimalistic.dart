// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIG9wYWNpdHk9IjAuNSIgZD0iTTIgMTJDMiA4LjIyODc2IDIgNi4zNDMxNSAzLjE3MTU3IDUuMTcxNTdDNC4zNDMxNSA0IDYuMjI4NzYgNCAxMCA0SDExLjVDMTUuMjcxMiA0IDE3LjE1NjkgNCAxOC4zMjg0IDUuMTcxNTdDMTkuNSA2LjM0MzE1IDE5LjUgOC4yMjg3NiAxOS41IDEyQzE5LjUgMTUuNzcxMiAxOS41IDE3LjY1NjkgMTguMzI4NCAxOC44Mjg0QzE3LjE1NjkgMjAgMTUuMjcxMiAyMCAxMS41IDIwSDEwQzYuMjI4NzYgMjAgNC4zNDMxNSAyMCAzLjE3MTU3IDE4LjgyODRDMiAxNy42NTY5IDIgMTUuNzcxMiAyIDEyWiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik03IDlDNyA5IDcuNSA5LjkgNy41IDEyQzcuNSAxNC4xIDcgMTUgNyAxNSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xMC41IDlDMTAuNSA5IDExIDkuOSAxMSAxMkMxMSAxNC4xIDEwLjUgMTUgMTAuNSAxNSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0yMiAxNEwyMiAxMCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class BatteryHalfMinimalisticLineDuotoneIcon extends StatelessWidget {
  /// Creates the `battery-half-minimalistic` icon in the lineDuotone style.
  const BatteryHalfMinimalisticLineDuotoneIcon({
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
    name: 'battery-half-minimalistic',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M7 9C7 9 7.5 9.9 7.5 12C7.5 14.1 7 15 7 15" stroke="currentColor" stroke-linecap="round"/>
<path d="M10.5 9C10.5 9 11 9.9 11 12C11 14.1 10.5 15 10.5 15" stroke="currentColor" stroke-linecap="round"/>
<path d="M22 14L22 10" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M2 12C2 8.22876 2 6.34315 3.17157 5.17157C4.34315 4 6.22876 4 10 4H11.5C15.2712 4 17.1569 4 18.3284 5.17157C19.5 6.34315 19.5 8.22876 19.5 12C19.5 15.7712 19.5 17.6569 18.3284 18.8284C17.1569 20 15.2712 20 11.5 20H10C6.22876 20 4.34315 20 3.17157 18.8284C2 17.6569 2 15.7712 2 12Z" stroke="currentColor" stroke-linecap="round"/>''',
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
