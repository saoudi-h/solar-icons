// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `station` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTIyIDkuMDc4MTZDMjIgMTEuODM2IDIwLjg4MzYgMTQuMzMzIDE5LjA3ODIgMTYuMTQyMU0xOS4xNDE0IDIuMDc4MTZDMTkuOTY3MyAyLjkyMDYgMjAuNjQ1MyAzLjkwODU1IDIxLjEzMzQgNU01IDE2LjIxOTZDMy4xNDg2NCAxNC40MDQ3IDIgMTEuODc1NiAyIDkuMDc4MTZDMiA2LjMxMzEzIDMuMTIyMjIgMy44MTAyIDQuOTM2MDMgMiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIi8+CjxwYXRoIGQ9Ik02IDkuMDYwMzNDNiA3LjUwNDcxIDYuNjczMzMgNi4wOTY1NSA3Ljc2MTYyIDUuMDc4MTJNMTYuMjg0OSA1LjEyMjFDMTcuMzQ1OCA2LjEzNjg5IDE4IDcuNTI2OTcgMTggOS4wNjAzM0MxOCAxMC42MTE5IDE3LjMzMDIgMTIuMDE2NyAxNi4yNDY5IDEzLjAzNDVNNy44IDEzLjA3ODFDNy40NDk2NyAxMi43NTYxIDcuMTQxMjcgMTIuMzk0MSA2Ljg4MzIxIDEyIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPGNpcmNsZSBjeD0iMTIiIGN5PSI5LjA3ODEyIiByPSIyIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTEyLjUgMTFMMTYgMjJMMTAuNSAxNS41TTExLjUgMTFMOCAyMkwxMy41IDE1LjUiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPgo8L3N2Zz4K)
class StationBrokenIcon extends StatelessWidget {
  /// Creates the `station` icon in the broken style.
  const StationBrokenIcon({
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
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M22 9.07816C22 11.836 20.8836 14.333 19.0782 16.1421M19.1414 2.07816C19.9673 2.9206 20.6453 3.90855 21.1334 5M5 16.2196C3.14864 14.4047 2 11.8756 2 9.07816C2 6.31313 3.12222 3.8102 4.93603 2" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M6 9.06033C6 7.50471 6.67333 6.09655 7.76162 5.07812M16.2849 5.1221C17.3458 6.13689 18 7.52697 18 9.06033C18 10.6119 17.3302 12.0167 16.2469 13.0345M7.8 13.0781C7.44967 12.7561 7.14127 12.3941 6.88321 12" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<circle cx="12" cy="9.07812" r="2" stroke="currentColor" stroke-linecap="round"/>
<path d="M12.5 11L16 22L10.5 15.5M11.5 11L8 22L13.5 15.5" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>''',
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
