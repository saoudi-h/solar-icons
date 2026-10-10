// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `route` icon in the linear style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTYuMTQyMTQgNi4xNDIxNEM4LjkwMzU2IDMuMzgwNzEgMTAuMjg0MyAyIDEyIDJDMTMuNzE1NyAyIDE1LjA5NjQgMy4zODA3MSAxNy44NTc5IDYuMTQyMTRDMjAuNjE5MyA4LjkwMzU2IDIyIDEwLjI4NDMgMjIgMTJDMjIgMTMuNzE1NyAyMC42MTkzIDE1LjA5NjQgMTcuODU3OSAxNy44NTc5QzE1LjA5NjQgMjAuNjE5MyAxMy43MTU3IDIyIDEyIDIyQzEwLjI4NDMgMjIgOC45MDM1NiAyMC42MTkzIDYuMTQyMTQgMTcuODU3OUMzLjM4MDcxIDE1LjA5NjQgMiAxMy43MTU3IDIgMTJDMiAxMC4yODQzIDMuMzgwNzEgOC45MDM1NiA2LjE0MjE0IDYuMTQyMTRaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTEzLjMzMzMgMTRMMTYgMTEuNUwxMy4zMzMzIDlNMTYgMTEuNUwxMC42NjY3IDExLjVDOS43Nzc3OCAxMS41IDggMTIgOCAxNCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIi8+Cjwvc3ZnPgo=)
class RouteLinearIcon extends StatelessWidget {
  /// Creates the `route` icon in the linear style.
  const RouteLinearIcon({
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
    name: 'route',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M6.14214 6.14214C8.90356 3.38071 10.2843 2 12 2C13.7157 2 15.0964 3.38071 17.8579 6.14214C20.6193 8.90356 22 10.2843 22 12C22 13.7157 20.6193 15.0964 17.8579 17.8579C15.0964 20.6193 13.7157 22 12 22C10.2843 22 8.90356 20.6193 6.14214 17.8579C3.38071 15.0964 2 13.7157 2 12C2 10.2843 3.38071 8.90356 6.14214 6.14214Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M13.3333 14L16 11.5L13.3333 9M16 11.5L10.6667 11.5C9.77778 11.5 8 12 8 14" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
