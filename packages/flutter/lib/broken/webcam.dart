// Generated from packages/core/svgs. Do not edit.
// ignore_for_file: public_member_api_docs

import 'package:flutter/widgets.dart';

import '../src/solar_icon.dart';
import '../src/solar_icon_data.dart';
import '../src/solar_icon_style.dart';
import '../src/solar_provider.dart';

/// The `webcam` icon in the broken style.
/// ![img](data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTEyIDQuNTAwOThIMTIuMDAwMSIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIi8+CjxwYXRoIGQ9Ik0xNiAyMkg4IiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTEyIDE4LjAwMzFWMjIiIHN0cm9rZT0iIzFDMjc0QyIgc3Ryb2tlLXdpZHRoPSIxLjUiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8cGF0aCBkPSJNOSAxMEM5IDguMzQzMTUgMTAuMzQzMSA3IDEyIDdDMTMuNjU2OSA3IDE1IDguMzQzMTUgMTUgMTBDMTUgMTEuNjU2OSAxMy42NTY5IDEzIDEyIDEzQzEwLjM0MzEgMTMgOSAxMS42NTY5IDkgMTBaIiBzdHJva2U9IiMxQzI3NEMiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiLz4KPHBhdGggZD0iTTQuNTgxNTIgN0M0LjIwNjUxIDcuOTI2NDMgNCA4LjkzOTEgNCAxMEM0IDE0LjQxODMgNy41ODE3MiAxOCAxMiAxOEMxNi40MTgzIDE4IDIwIDE0LjQxODMgMjAgMTBDMjAgNS41ODE3MiAxNi40MTgzIDIgMTIgMkMxMC45MzkxIDIgOS45MjY0MyAyLjIwNjUxIDkgMi41ODE1MiIgc3Ryb2tlPSIjMUMyNzRDIiBzdHJva2Utd2lkdGg9IjEuNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=)
class WebcamBrokenIcon extends StatelessWidget {
  /// Creates the `webcam` icon in the broken style.
  const WebcamBrokenIcon({
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
    name: 'webcam',
    style: SolarIconStyle.broken,
    body:
        r'''<path d="M12 4.50098H12.0001" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M16 22H8" stroke="currentColor" stroke-linecap="round"/>
<path d="M12 18.0031V22" stroke="currentColor" stroke-linecap="round"/>
<path d="M9 10C9 8.34315 10.3431 7 12 7C13.6569 7 15 8.34315 15 10C15 11.6569 13.6569 13 12 13C10.3431 13 9 11.6569 9 10Z" stroke="currentColor" stroke-linecap="round"/>
<path d="M4.58152 7C4.20651 7.92643 4 8.9391 4 10C4 14.4183 7.58172 18 12 18C16.4183 18 20 14.4183 20 10C20 5.58172 16.4183 2 12 2C10.9391 2 9.92643 2.20651 9 2.58152" stroke="currentColor" stroke-linecap="round"/>''',
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
