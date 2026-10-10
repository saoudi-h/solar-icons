// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `tv` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTIgMTRMMiAxNkMyIDE4LjgyODQgMiAyMC4yNDI2IDIuODc4NjggMjEuMTIxM0MzLjc1NzM2IDIyIDUuMTcxNTcgMjIgOCAyMkwxNiAyMkMxOC44Mjg0IDIyIDIwLjI0MjYgMjIgMjEuMTIxMyAyMS4xMjEzQzIyIDIwLjI0MjYgMjIgMTguODI4NCAyMiAxNlYxMkMyMiA5LjE3MTU3IDIyIDcuNzU3MzYgMjEuMTIxMyA2Ljg3ODY4QzIwLjI0MjYgNiAxOC44Mjg0IDYgMTYgNkw4IDZDNS4xNzE1NyA2IDMuNzU3MzYgNiAyLjg3ODY4IDYuODc4NjhDMi4yMzczOCA3LjUxOTk4IDIuMDY0MTMgOC40NDY1NSAyLjAxNzMyIDEwIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTkgMkwxMiA1LjVMMTUgMiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xNiA2VjEwTTE2IDIyVjE0IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTE5IDEySDE5LjAwMDEiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPgo8cGF0aCBkPSJNMTkgMTZIMTkuMDAwMSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIi8+Cjwvc3ZnPgo=)
class TvBrokenIcon extends StatelessWidget {
  /// Creates the `tv` icon in the broken style.
  const TvBrokenIcon({
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
    name: 'tv',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M2 14L2 16C2 18.8284 2 20.2426 2.87868 21.1213C3.75736 22 5.17157 22 8 22L16 22C18.8284 22 20.2426 22 21.1213 21.1213C22 20.2426 22 18.8284 22 16V12C22 9.17157 22 7.75736 21.1213 6.87868C20.2426 6 18.8284 6 16 6L8 6C5.17157 6 3.75736 6 2.87868 6.87868C2.23738 7.51998 2.06413 8.44655 2.01732 10" stroke="currentColor" stroke-linecap="round"/>
<path d="M9 2L12 5.5L15 2" stroke="currentColor" stroke-linecap="round"/>
<path d="M16 6V10M16 22V14" stroke="currentColor" stroke-linecap="round"/>
<path d="M19 12H19.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M19 16H19.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
