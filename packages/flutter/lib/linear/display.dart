// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `display` icon in the linear style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTIgOUMyIDYuMTcxNTcgMiA0Ljc1NzM2IDIuODc4NjggMy44Nzg2OEMzLjc1NzM2IDMgNS4xNzE1NyAzIDggM0gxNkMxOC44Mjg0IDMgMjAuMjQyNiAzIDIxLjEyMTMgMy44Nzg2OEMyMiA0Ljc1NzM2IDIyIDYuMTcxNTcgMjIgOVYxMEMyMiAxMi44Mjg0IDIyIDE0LjI0MjYgMjEuMTIxMyAxNS4xMjEzQzIwLjI0MjYgMTYgMTguODI4NCAxNiAxNiAxNkg4QzUuMTcxNTcgMTYgMy43NTczNiAxNiAyLjg3ODY4IDE1LjEyMTNDMiAxNC4yNDI2IDIgMTIuODI4NCAyIDEwVjlaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTEyIDE5VjE2LjVNMTIgMTlMMTggMjFNMTIgMTlMNiAyMSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class DisplayLinearIcon extends StatelessWidget {
  /// Creates the `display` icon in the linear style.
  const DisplayLinearIcon({
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
    name: 'display',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M2 9C2 6.17157 2 4.75736 2.87868 3.87868C3.75736 3 5.17157 3 8 3H16C18.8284 3 20.2426 3 21.1213 3.87868C22 4.75736 22 6.17157 22 9V10C22 12.8284 22 14.2426 21.1213 15.1213C20.2426 16 18.8284 16 16 16H8C5.17157 16 3.75736 16 2.87868 15.1213C2 14.2426 2 12.8284 2 10V9Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 19V16.5M12 19L18 21M12 19L6 21" stroke="currentColor" stroke-linecap="round"/>''',
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
