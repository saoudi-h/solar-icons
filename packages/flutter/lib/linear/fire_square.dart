// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `fire-square` icon in the linear style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTIgMTJDMiA3LjI4NTk1IDIgNC45Mjg5MyAzLjQ2NDQ3IDMuNDY0NDdDNC45Mjg5MyAyIDcuMjg1OTUgMiAxMiAyQzE2LjcxNCAyIDE5LjA3MTEgMiAyMC41MzU1IDMuNDY0NDdDMjIgNC45Mjg5MyAyMiA3LjI4NTk1IDIyIDEyQzIyIDE2LjcxNCAyMiAxOS4wNzExIDIwLjUzNTUgMjAuNTM1NUMxOS4wNzExIDIyIDE2LjcxNCAyMiAxMiAyMkM3LjI4NTk1IDIyIDQuOTI4OTMgMjIgMy40NjQ0NyAyMC41MzU1QzIgMTkuMDcxMSAyIDE2LjcxNCAyIDEyWiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xNyAxMi42NjY3QzE3IDE2LjkzMzMgMTMuNDQ0NCAxOCAxMS42NjY3IDE4QzEwLjExMTEgMTggNyAxNi45MzMzIDcgMTIuNjY2N0M3IDEwLjgxMDkgOC4wNjI5MiA5LjYzMjc2IDguOTU1OTMgOS4wMzk3NkM5LjM2NDIxIDguNzY4NjQgOS44NzIwMSA4Ljk0MTkzIDkuODk4NDEgOS40MzEzMUM5Ljk1NjE2IDEwLjUwMjEgMTAuNzgxNCAxMS4zNjIyIDExLjQyMDUgMTAuNTAxMUMxMi4wMDU0IDkuNzEyOTkgMTIuMjk0MSA4LjY0MjczIDEyLjI5NDEgOC4wMDAwMUMxMi4yOTQxIDcuMDUzMjMgMTMuMjUyNSA2LjQ1MTU5IDE0LjAwMDggNy4wMzE2NkMxNS40NTkzIDguMTYyMzEgMTcgMTAuMDU1OCAxNyAxMi42NjY3WiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class FireSquareLinearIcon extends StatelessWidget {
  /// Creates the `fire-square` icon in the linear style.
  const FireSquareLinearIcon({
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
    name: 'fire-square',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M2 12C2 7.28595 2 4.92893 3.46447 3.46447C4.92893 2 7.28595 2 12 2C16.714 2 19.0711 2 20.5355 3.46447C22 4.92893 22 7.28595 22 12C22 16.714 22 19.0711 20.5355 20.5355C19.0711 22 16.714 22 12 22C7.28595 22 4.92893 22 3.46447 20.5355C2 19.0711 2 16.714 2 12Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M17 12.6667C17 16.9333 13.4444 18 11.6667 18C10.1111 18 7 16.9333 7 12.6667C7 10.8109 8.06292 9.63276 8.95593 9.03976C9.36421 8.76864 9.87201 8.94193 9.89841 9.43131C9.95616 10.5021 10.7814 11.3622 11.4205 10.5011C12.0054 9.71299 12.2941 8.64273 12.2941 8.00001C12.2941 7.05323 13.2525 6.45159 14.0008 7.03166C15.4593 8.16231 17 10.0558 17 12.6667Z" stroke="currentColor" stroke-linecap="round"/>''',
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
