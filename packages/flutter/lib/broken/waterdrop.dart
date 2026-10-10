// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `waterdrop` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTMuNDQ2NjggMTZDMy4xNTY5OCAxNS4xMTgzIDMgMTQuMTc0MyAzIDEzLjE5MjhWMTIuOTI4MUMzIDguMzE2NTEgNS43Mjg1NCA0LjE2MzQ3IDkuOTAzMjkgMi40MjA3N0MxMS4yNDczIDEuODU5NzQgMTIuNzUyNyAxLjg1OTc0IDE0LjA5NjcgMi40MjA3N0MxOC4yNzE1IDQuMTYzNDcgMjEgOC4zMTY1MSAyMSAxMi45MjgxVjEzLjE5MjhDMjEgMTguMDU2OSAxNy4xNDQ1IDIyIDEyLjM4ODUgMjJIMTEuNjExNUM5LjQ2Nzg2IDIyIDcuNTA3MTggMjEuMTk5IDYgMTkuODczNiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik03LjYxNDc1IDEwLjcyMzdDOC4yNDk1IDguNzE4MjYgOS42MzA2MiA3LjA4ODA1IDExLjM4NTggNi4yNzYzNyIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class WaterdropBrokenIcon extends StatelessWidget {
  /// Creates the `waterdrop` icon in the broken style.
  const WaterdropBrokenIcon({
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
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M3.44668 16C3.15698 15.1183 3 14.1743 3 13.1928V12.9281C3 8.31651 5.72854 4.16347 9.90329 2.42077C11.2473 1.85974 12.7527 1.85974 14.0967 2.42077C18.2715 4.16347 21 8.31651 21 12.9281V13.1928C21 18.0569 17.1445 22 12.3885 22H11.6115C9.46786 22 7.50718 21.199 6 19.8736" stroke="currentColor" stroke-linecap="round"/>
<path d="M7.61475 10.7237C8.2495 8.71826 9.63062 7.08805 11.3858 6.27637" stroke="currentColor" stroke-linecap="round"/>''',
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
