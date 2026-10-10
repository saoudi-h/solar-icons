// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `minimize-square-3` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMTIuOTk5OSAyMS45OTk0QzE3LjA1NSAyMS45OTIxIDE5LjE3ODQgMjEuODkyNiAyMC41MzU0IDIwLjUzNTVDMjEuOTk5OSAxOS4wNzExIDIxLjk5OTkgMTYuNzE0IDIxLjk5OTkgMTJDMjEuOTk5OSA3LjI4NTk1IDIxLjk5OTkgNC45Mjg5MyAyMC41MzU0IDMuNDY0NDdDMTkuMDcxIDIgMTYuNzE0IDIgMTEuOTk5OSAyQzcuMjg1ODcgMiA0LjkyODg0IDIgMy40NjQzOCAzLjQ2NDQ3QzIuMTA3MzQgNC44MjE1IDIuMDA3NzkgNi45NDQ5MyAyLjAwMDQ5IDExIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTE3IDdMMTIgMTJNMTIgOC4yNVYxMkgxNS43NSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIi8+CjxwYXRoIGQ9Ik0yIDE4QzIgMTYuMTE0NCAyIDE1LjE3MTYgMi41ODU3OSAxNC41ODU4QzMuMTcxNTcgMTQgNC4xMTQzOCAxNCA2IDE0QzcuODg1NjIgMTQgOC44Mjg0MyAxNCA5LjQxNDIxIDE0LjU4NThDMTAgMTUuMTcxNiAxMCAxNi4xMTQ0IDEwIDE4QzEwIDE5Ljg4NTYgMTAgMjAuODI4NCA5LjQxNDIxIDIxLjQxNDJDOC44Mjg0MyAyMiA3Ljg4NTYyIDIyIDYgMjJDNC4xMTQzOCAyMiAzLjE3MTU3IDIyIDIuNTg1NzkgMjEuNDE0MkMyIDIwLjgyODQgMiAxOS44ODU2IDIgMThaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class MinimizeSquare3LineDuotoneIcon extends StatelessWidget {
  /// Creates the `minimize-square-3` icon in the lineDuotone style.
  const MinimizeSquare3LineDuotoneIcon({
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
    name: 'minimize-square-3',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<path d="M17 7L12 12M12 8.25V12H15.75" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M2 18C2 16.1144 2 15.1716 2.58579 14.5858C3.17157 14 4.11438 14 6 14C7.88562 14 8.82843 14 9.41421 14.5858C10 15.1716 10 16.1144 10 18C10 19.8856 10 20.8284 9.41421 21.4142C8.82843 22 7.88562 22 6 22C4.11438 22 3.17157 22 2.58579 21.4142C2 20.8284 2 19.8856 2 18Z" stroke="currentColor" stroke-linecap="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M12.9999 21.9994C17.055 21.9921 19.1784 21.8926 20.5354 20.5355C21.9999 19.0711 21.9999 16.714 21.9999 12C21.9999 7.28595 21.9999 4.92893 20.5354 3.46447C19.071 2 16.714 2 11.9999 2C7.28587 2 4.92884 2 3.46438 3.46447C2.10734 4.8215 2.00779 6.94493 2.00049 11" stroke="currentColor" stroke-linecap="round"/>''',
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
