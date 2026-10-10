// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `waterdrop` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMyAxMy4xOTI4QzMgMTguMDU2OSA2Ljg1NTQ5IDIyIDExLjYxMTUgMjJIMTIuMzg4NUMxNy4xNDQ1IDIyIDIxIDE4LjA1NjkgMjEgMTMuMTkyOFYxMi45MjgxQzIxIDguMzE2NTEgMTguMjcxNSA0LjE2MzQ3IDE0LjA5NjcgMi40MjA3N0MxMi43NTI3IDEuODU5NzQgMTEuMjQ3MyAxLjg1OTc0IDkuOTAzMjkgMi40MjA3N0M1LjcyODU0IDQuMTYzNDcgMyA4LjMxNjUxIDMgMTIuOTI4MVYxMy4xOTI4WiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik03LjYxNDc1IDEwLjcyMzdDOC4yNDk1IDguNzE4MjYgOS42MzA2MiA3LjA4ODA1IDExLjM4NTggNi4yNzYzNyIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class WaterdropLineDuotoneIcon extends StatelessWidget {
  /// Creates the `waterdrop` icon in the lineDuotone style.
  const WaterdropLineDuotoneIcon({
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
    name: 'waterdrop',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M7.61475 10.7237C8.2495 8.71826 9.63062 7.08805 11.3858 6.27637" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M3 13.1928C3 18.0569 6.85549 22 11.6115 22H12.3885C17.1445 22 21 18.0569 21 13.1928V12.9281C21 8.31651 18.2715 4.16347 14.0967 2.42077C12.7527 1.85974 11.2473 1.85974 9.90329 2.42077C5.72854 4.16347 3 8.31651 3 12.9281V13.1928Z" stroke="currentColor" stroke-linecap="round"/>''',
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
