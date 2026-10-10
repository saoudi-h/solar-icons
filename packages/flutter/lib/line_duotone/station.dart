// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `station` icon in the lineDuotone style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMTkuMTQxNCAyLjA3ODE2QzIwLjkwOTcgMy44ODE5MSAyMiA2LjM1MjcgMjIgOS4wNzgxNkMyMiAxMS44MzYgMjAuODgzNiAxNC4zMzMgMTkuMDc4MiAxNi4xNDIxTTUgMTYuMjE5NkMzLjE0ODY0IDE0LjQwNDcgMiAxMS44NzU2IDIgOS4wNzgxNkMyIDYuMzEzMTMgMy4xMjIyMiAzLjgxMDIgNC45MzYwMyAyIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPHBhdGggb3BhY2l0eT0iMC41IiBkPSJNMTYuMjg0OSA1LjEyMjFDMTcuMzQ1OCA2LjEzNjg5IDE4IDcuNTI2OTcgMTggOS4wNjAzM0MxOCAxMC42MTE5IDE3LjMzMDIgMTIuMDE2NyAxNi4yNDY5IDEzLjAzNDVNNy44IDEzLjA3ODFDNi42ODkxOCAxMi4wNTcgNiAxMC42MzQyIDYgOS4wNjAzM0M2IDcuNTA0NzEgNi42NzMzMyA2LjA5NjU1IDcuNzYxNjIgNS4wNzgxMiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIi8+CjxjaXJjbGUgY3g9IjEyIiBjeT0iOS4wNzgxMiIgcj0iMiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CjxwYXRoIGQ9Ik0xMi41IDExTDE2IDIyTDEwLjUgMTUuNU0xMS41IDExTDggMjJMMTMuNSAxNS41IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPC9zdmc+Cg==)
class StationLineDuotoneIcon extends StatelessWidget {
  /// Creates the `station` icon in the lineDuotone style.
  const StationLineDuotoneIcon({
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
    name: 'station',
    style: SolarIconStyle.lineDuotone,
    body:
        r'''<circle cx="12" cy="9.07812" r="2" stroke="currentColor" stroke-linecap="round"/>
<path d="M12.5 11L16 22L10.5 15.5M11.5 11L8 22L13.5 15.5" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
    accent:
        r'''<path opacity="0.5" d="M19.1414 2.07816C20.9097 3.88191 22 6.3527 22 9.07816C22 11.836 20.8836 14.333 19.0782 16.1421M5 16.2196C3.14864 14.4047 2 11.8756 2 9.07816C2 6.31313 3.12222 3.8102 4.93603 2" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>

<path opacity="0.5" d="M16.2849 5.1221C17.3458 6.13689 18 7.52697 18 9.06033C18 10.6119 17.3302 12.0167 16.2469 13.0345M7.8 13.0781C6.68918 12.057 6 10.6342 6 9.06033C6 7.50471 6.67333 6.09655 7.76162 5.07812" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
