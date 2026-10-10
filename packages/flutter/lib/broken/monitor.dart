// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `monitor` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTUgMi4yNTIwMUM0LjIyNTUgMi40MjA2IDMuNjQxMTggMi43MDE5NyAzLjE3MTU3IDMuMTcxNTdDMiA0LjM0MzE1IDIgNi4yMjg3NiAyIDEwVjExQzIgMTMuODI4NCAyIDE1LjI0MjYgMi44Nzg2OCAxNi4xMjEzQzMuNzU3MzYgMTcgNS4xNzE1NyAxNyA4IDE3SDE2QzE4LjgyODQgMTcgMjAuMjQyNiAxNyAyMS4xMjEzIDE2LjEyMTNDMjIgMTUuMjQyNiAyMiAxMy44Mjg0IDIyIDExVjEwQzIyIDYuMjI4NzYgMjIgNC4zNDMxNSAyMC44Mjg0IDMuMTcxNTdDMTkuNjU2OSAyIDE3Ljc3MTIgMiAxNCAySDEwQzkuNjUwODEgMiA5LjMxNzc5IDIgOSAyLjAwMDkzIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTE2IDIySDgiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTIgMTdMMTIgMjIiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNMjIgMTNIMTZNMiAxM0gxMiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class MonitorBrokenIcon extends StatelessWidget {
  /// Creates the `monitor` icon in the broken style.
  const MonitorBrokenIcon({
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
    name: 'monitor',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M5 2.25201C4.2255 2.4206 3.64118 2.70197 3.17157 3.17157C2 4.34315 2 6.22876 2 10V11C2 13.8284 2 15.2426 2.87868 16.1213C3.75736 17 5.17157 17 8 17H16C18.8284 17 20.2426 17 21.1213 16.1213C22 15.2426 22 13.8284 22 11V10C22 6.22876 22 4.34315 20.8284 3.17157C19.6569 2 17.7712 2 14 2H10C9.65081 2 9.31779 2 9 2.00093" stroke="currentColor" stroke-linecap="round"/>
<path d="M16 22H8" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 17L12 22" stroke="currentColor" stroke-linecap="round"/>
<path d="M22 13H16M2 13H12" stroke="currentColor" stroke-linecap="round"/>''',
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
