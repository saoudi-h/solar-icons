// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `move-3d` icon in the linear style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTEzLjAxMzcgNy4zMzgxTDkuODM3ODUgNC4xNjIzNUw2LjY2MjE1IDcuMzM4MDEiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPgo8cGF0aCBkPSJNNC4xNjI1OCAxNS4zNDY3TDQuMTYyNjQgMTkuODM3OUw4LjY1MzczIDE5LjgzOCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIi8+CjxwYXRoIGQ9Ik0xNi42NjIzIDE3LjMzNzZMMTkuODM3OSAxNC4xNjIxTDE2LjY2MjMgMTAuOTg2OCIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIi8+CjxwYXRoIGQ9Ik05LjgzNzc2IDQuMTYyMzVMOS44Mzc1NSAxNC4xNjIxTTkuODM3NTUgMTQuMTYyMUwxOS44Mzc2IDE0LjE2MjJNOS44Mzc1NSAxNC4xNjIxTDQuMTYyNiAxOS44Mzc5IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPC9zdmc+Cg==)
class Move3dLinearIcon extends StatelessWidget {
  /// Creates the `move-3d` icon in the linear style.
  const Move3dLinearIcon({
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
    name: 'move-3d',
    style: SolarIconStyle.linear,
    body:
        r'''<path d="M13.0137 7.3381L9.83785 4.16235L6.66215 7.33801" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M4.16258 15.3467L4.16264 19.8379L8.65373 19.838" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M16.6623 17.3376L19.8379 14.1621L16.6623 10.9868" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M9.83776 4.16235L9.83755 14.1621M9.83755 14.1621L19.8376 14.1622M9.83755 14.1621L4.1626 19.8379" stroke="currentColor" stroke-linecap="round"/>''',
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
