// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `pause` icon in the linear style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTIgNkMyIDQuMTE0MzggMiAzLjE3MTU3IDIuNTg1NzkgMi41ODU3OUMzLjE3MTU3IDIgNC4xMTQzOCAyIDYgMkM3Ljg4NTYyIDIgOC44Mjg0MyAyIDkuNDE0MjEgMi41ODU3OUMxMCAzLjE3MTU3IDEwIDQuMTE0MzggMTAgNlYxOEMxMCAxOS44ODU2IDEwIDIwLjgyODQgOS40MTQyMSAyMS40MTQyQzguODI4NDMgMjIgNy44ODU2MiAyMiA2IDIyQzQuMTE0MzggMjIgMy4xNzE1NyAyMiAyLjU4NTc5IDIxLjQxNDJDMiAyMC44Mjg0IDIgMTkuODg1NiAyIDE4VjZaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTE0IDZDMTQgNC4xMTQzOCAxNCAzLjE3MTU3IDE0LjU4NTggMi41ODU3OUMxNS4xNzE2IDIgMTYuMTE0NCAyIDE4IDJDMTkuODg1NiAyIDIwLjgyODQgMiAyMS40MTQyIDIuNTg1NzlDMjIgMy4xNzE1NyAyMiA0LjExNDM4IDIyIDZWMThDMjIgMTkuODg1NiAyMiAyMC44Mjg0IDIxLjQxNDIgMjEuNDE0MkMyMC44Mjg0IDIyIDE5Ljg4NTYgMjIgMTggMjJDMTYuMTE0NCAyMiAxNS4xNzE2IDIyIDE0LjU4NTggMjEuNDE0MkMxNCAyMC44Mjg0IDE0IDE5Ljg4NTYgMTQgMThWNloiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K)
class PauseLinearIcon extends StatelessWidget {
  /// Creates the `pause` icon in the linear style.
  const PauseLinearIcon({
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
    name: 'pause',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M2 6C2 4.11438 2 3.17157 2.58579 2.58579C3.17157 2 4.11438 2 6 2C7.88562 2 8.82843 2 9.41421 2.58579C10 3.17157 10 4.11438 10 6V18C10 19.8856 10 20.8284 9.41421 21.4142C8.82843 22 7.88562 22 6 22C4.11438 22 3.17157 22 2.58579 21.4142C2 20.8284 2 19.8856 2 18V6Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M14 6C14 4.11438 14 3.17157 14.5858 2.58579C15.1716 2 16.1144 2 18 2C19.8856 2 20.8284 2 21.4142 2.58579C22 3.17157 22 4.11438 22 6V18C22 19.8856 22 20.8284 21.4142 21.4142C20.8284 22 19.8856 22 18 22C16.1144 22 15.1716 22 14.5858 21.4142C14 20.8284 14 19.8856 14 18V6Z" stroke="currentColor" stroke-linecap="round"/>''',
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
