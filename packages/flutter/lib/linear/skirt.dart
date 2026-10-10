// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// ![img](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDI0IDI0IiBmaWxsPSJub25lIj48cmVjdCB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIGZpbGw9IiNGRkYiIC8+CjxwYXRoIGQ9Ik0xOC4xNjI0IDUuNVY0QzE4LjE2MjQgMy4wNTcxOSAxOC4xNjI0IDIuNTg1NzkgMTcuODYxNiAyLjI5Mjg5QzE3LjU2MDggMiAxNy4wNzY2IDIgMTYuMTA4MyAySDcuODkxN0M2LjkyMzM3IDIgNi40MzkyIDIgNi4xMzgzOCAyLjI5Mjg5QzUuODM3NTYgMi41ODU3OSA1LjgzNzU2IDMuMDU3MTkgNS44Mzc1NiA0VjUuNU0xOC4xNjI0IDUuNUg1LjgzNzU2TTE4LjE2MjQgNS41TDIxLjkxOTMgMTcuOTUyOUMyMi4xMzUzIDE4LjY2ODYgMjEuOTE3OCAxOS40Mzc5IDIxLjI2NTUgMTkuODI5M0MxOS44NDI5IDIwLjY4MjggMTYuODYwMiAyMiAxMiAyMkM3LjEzOTgyIDIyIDQuMTU3MDkgMjAuNjgyOCAyLjczNDUgMTkuODI5M0MyLjA4MjIyIDE5LjQzNzkgMS44NjQ3MyAxOC42Njg2IDIuMDgwNjYgMTcuOTUyOUw1LjgzNzU2IDUuNU0xMCA1LjVMNy44OTE3IDIxLjVNMTQgNS41TDE2LjEwODMgMjEuNSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class SkirtLinearIcon extends StatelessWidget {
  /// Creates the `skirt` icon in the linear style.
  const SkirtLinearIcon({
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
    name: 'skirt',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M18.1624 5.5V4C18.1624 3.05719 18.1624 2.58579 17.8616 2.29289C17.5608 2 17.0766 2 16.1083 2H7.8917C6.92337 2 6.4392 2 6.13838 2.29289C5.83756 2.58579 5.83756 3.05719 5.83756 4V5.5M18.1624 5.5H5.83756M18.1624 5.5L21.9193 17.9529C22.1353 18.6686 21.9178 19.4379 21.2655 19.8293C19.8429 20.6828 16.8602 22 12 22C7.13982 22 4.15709 20.6828 2.7345 19.8293C2.08222 19.4379 1.86473 18.6686 2.08066 17.9529L5.83756 5.5M10 5.5L7.8917 21.5M14 5.5L16.1083 21.5" stroke="currentColor" stroke-linecap="round"/>''',
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
